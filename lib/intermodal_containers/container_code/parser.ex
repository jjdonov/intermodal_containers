defmodule IntermodalContainers.ContainerCode.Parser do
  @moduledoc false

  alias IntermodalContainers.ContainerCode
  alias IntermodalContainers.ContainerCode.SizeCodes
  alias IntermodalContainers.ContainerCode.TypeCodes

  @type result() :: {:ok, %ContainerCode{}} | {:error, String.t()}

  @spec parse(String.t()) :: result()
  def parse(code) do
    try do
      parse_step({code, 0, %ContainerCode{}})
    rescue
      UndefinedFunctionError -> {:error, "invalid container code"}
    end
  end

  defp parse_step({_rest, 0, %{}} = parse_state) do
    consume(parse_state, 1, &accept_l/1)
  end

  defp parse_step({_rest, 1, %{}} = parse_state) do
    consume(parse_state, 1, &accept_w_h/1)
  end

  defp parse_step({_rest, 2, _} = parse_state) do
    consume(parse_state, 2, &accept_type/1)
  end

  defp parse_step({_, 4, result}), do: {:ok, result}

  defp accept_l(size_code) do
    l = lookup(:length, size_code)

    cond do
      byte_size(size_code) != 1 ->
        {:error,
         "length code should be 1 character long. #{size_code} is #{byte_size(size_code)}"}

      lookup(:length, size_code) == nil ->
        {:error, "unrecognized length code"}

      true ->
        {:ok, &update_state(&1, length: l)}
    end
  end

  defp accept_w_h(size_code) do
    w = lookup(:width, size_code)
    h = lookup(:height, size_code)

    cond do
      byte_size(size_code) != 1 ->
        {:error, "width height code should be 1 character long"}

      w == nil ->
        {:error, "unrecognixed width code"}

      h == nil ->
        {:error, "unrecognized height code"}

      true ->
        {:ok, &update_state(&1, width: w, height: h)}
    end
  end

  defp accept_type(type_code) do
    type = lookup(:type, type_code)

    cond do
      byte_size(type_code) != 2 ->
        {:error, "type code should be 2 characters, got #{byte_size(type_code)}"}

      type == nil ->
        {:error, "unrecognized type code"}

      true ->
        {:ok, &update_state(&1, type: type)}
    end
  end

  defp update_state(%ContainerCode{} = state, key, code) do
    Map.update!(state, key, fn _old -> code end)
  end

  defp update_state(%ContainerCode{} = state, [{key, code} | rest]) do
    update_state(state, key, code)
    |> update_state(rest)
  end

  defp update_state(%ContainerCode{} = state, []), do: state

  defp lookup(:length, code), do: SizeCodes.get_length(code)
  defp lookup(:width, code), do: SizeCodes.get_width(code)
  defp lookup(:height, code), do: SizeCodes.get_height(code)
  defp lookup(:type, code), do: TypeCodes.get(code)

  def consume({code, position, res}, size, acceptFn) do
    {target, rest} = String.split_at(code, size)

    acceptFn.(target)
    |> advance(rest, position + size, res)
  end

  def advance({:error, _reason} = err, _code, _position, _parsed_container_number), do: err

  def advance({:ok, updateFn}, remainder, next_position, intermediate_result) do
    parse_step({remainder, next_position, updateFn.(intermediate_result)})
  end
end
