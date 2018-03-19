defmodule IntermodalContainers.Parser do

  alias IntermodalContainers.Alphabet
  alias IntermodalContainers.ContainerNumber

  def parse({:error, reason}), do: {:error, reason}

  def parse(code) do
    parse(code, 0, %ContainerNumber{})
  end

  def parse(code, 0, acc) do
    {owner_code, rest} = String.split_at(code, 3)
    case validate_owner_code(owner_code) do
      {:ok, owner_code} ->
        parse(rest, 3, %{ acc | owner_code: owner_code })
      {:error, reason} ->
        {:error, reason}
    end
  end

  def parse(code, 3, acc) do
    {category_identifier, rest} = String.split_at(code, 1)
    case validate_category_identifier(category_identifier) do
      {:ok, category_identifier} ->
        parse(rest, 4, %{ acc | category_identifier: category_identifier })
      {:error, reason} ->
        {:error, reason}
    end
  end

  def parse(code, 4, acc) do
    {serial_number, rest} = String.split_at(code, 6)
    case validate_serial_number(serial_number) do
      {:ok, serial_number} ->
        parse(rest, 10, %{ acc | serial_number: serial_number })
      {:error, reason} ->
        {:error, reason}
    end
  end

  def parse(check_digit, 10, acc) do
    case validate_check_digit(check_digit) do
      {:ok, check_digit} ->
        {:ok, %{ acc | check_digit: check_digit }}
      {:error, reason} ->
        {:error, reason}
    end
  end

  def parse(code, position, acc) do
    {:error, "Unidentified parse step for #{code} at #{position}. State: #{inspect acc}"}
  end

  def validate_owner_code(owner_code) do
    cond do
      byte_size(owner_code) != 3 ->
        {:error, "Owner code must be three letter long. Got #{owner_code}"}
      !Alphabet.all_letters(owner_code) ->
        {:error, "Owner code must be three capital letters. Got #{owner_code}"}
      true ->
        {:ok, owner_code}
    end
  end

  def validate_category_identifier(category_identifier) do
    cond do
      byte_size(category_identifier) != 1 ->
        {:error, "Category Identifier must be one letter long."}
      !(category_identifier in ["U", "J", "Z"]) ->
        {:error, "Category Identidier must be one of U, J, Z"}
      true ->
        {:ok, category_identifier}
    end
  end

  def validate_serial_number(serial_number) do
    cond do
      byte_size(serial_number) != 6 ->
        {:error, "Serial Number must be 6 digits long. Got #{serial_number}"}
      !Alphabet.all_digits(serial_number) ->
        {:error, "Serial Number must be comprised of digits. Got #{serial_number}"}
      true ->
        {:ok, serial_number}
    end
  end

  def validate_check_digit(check_digit) do
    cond do
      byte_size(check_digit) != 1 ->
        {:error, "Check digit must be 1 digit long."}
      !Alphabet.is_digit(check_digit) ->
        {:error, "Check digit must be a digit."}
      true ->
        {:ok, check_digit}
    end
  end

end
