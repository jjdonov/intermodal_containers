defmodule IntermodalContainers.Number.Parser do
  alias IntermodalContainers.ContainerNumber

  alias IntermodalContainers.Number.Alphabet
  alias IntermodalContainers.ParseError

  def parse!(code) do
    case parse(code) do
      {:ok, result} ->
        result
      {:error, reason} ->
        raise %ParseError{message: reason}
    end
  end

  def parse(code) when byte_size(code) == 11 do
    parse_step({code, 0, %ContainerNumber{}})
  end

  def parse(code) when is_binary(code) do
    {:error, "code is expected to be 11 bytes, has #{byte_size(code)}"}
  end

  def parse(_code) do
    {:error, "code must be a string"}
  end

  def parse_step({code, 0, _} = parse_state) when byte_size(code) == 11 do
    validator = &validate_owner_code/1
    consume(parse_state, 3, validator)
  end

  def parse_step({remaining_code, 3, _} = parse_state) when byte_size(remaining_code) == 8 do
    validator = &validate_category_identifier/1
    consume(parse_state, 1, validator)
  end

  def parse_step({remaining_code, 4, _} = parse_state) when byte_size(remaining_code) == 7 do
    validator = &validate_serial_number/1
    consume(parse_state, 6, validator)
  end

  def parse_step({check_digit, 10, _} = parse_state) when byte_size(check_digit) == 1 do
    validator = &validate_check_digit/1
    consume(parse_state, 1, validator)
  end

  def parse_step({code, position, parsed_container_number}) do
    err = "Unidentified parse step for #{code} at #{position}."
          <> "State: #{inspect(parsed_container_number)}"
    {:error, err}
  end

  defp consume({code, position, parsed_container_number}, size, validator) do
    {target, rest} = String.split_at(code, size)

    validator.(target)
    |> advance(rest, position + size, parsed_container_number)
  end

  defp advance({:error, _reason} = err, _code, _position, _parsed_container_number), do: err

  defp advance({:ok, :check_digit, check_digit}, "", 11, parsed_container_number) do
    {:ok, %{parsed_container_number | check_digit: check_digit}}
  end

  defp advance({:ok, key, val}, remainder, next_position, intermediate_result) do
    intermediate_result = Map.update!(intermediate_result, key, fn _old -> val end)
    parse_step({remainder, next_position, intermediate_result})
  end

  def validate_owner_code(owner_code) do
    cond do
      byte_size(owner_code) != 3 ->
        {:error, "Owner code must be three letter long. Got #{owner_code}"}

      !Alphabet.all_letters(owner_code) ->
        {:error, "Owner code must be three capital letters. Got #{owner_code}"}

      true ->
        {:ok, :owner_code, owner_code}
    end
  end

  def validate_category_identifier(category_identifier) do
    cond do
      byte_size(category_identifier) != 1 ->
        {:error, "Category Identifier must be one letter long."}

      !(category_identifier in ["U", "J", "Z"]) ->
        {:error, "Category Identidier must be one of U, J, Z"}

      true ->
        {:ok, :category_identifier, category_identifier}
    end
  end

  def validate_serial_number(serial_number) do
    cond do
      byte_size(serial_number) != 6 ->
        {:error, "Serial Number must be 6 digits long. Got #{serial_number}"}

      !Alphabet.all_digits(serial_number) ->
        {:error, "Serial Number must be comprised of digits. Got #{serial_number}"}

      true ->
        {:ok, :serial_number, serial_number}
    end
  end

  def validate_check_digit(check_digit) do
    cond do
      byte_size(check_digit) != 1 ->
        {:error, "Check digit must be 1 digit long."}

      !Alphabet.is_digit(check_digit) ->
        {:error, "Check digit must be a digit."}

      true ->
        {:ok, :check_digit, check_digit}
    end
  end
end
