defmodule IntermodalContainers.Coding.Parser do

  alias IntermodalContainers.Coding.SizeCodes
  alias IntermodalContainers.ParseError

  alias IntermodalContainers.Coding.DooDoo

  alias IntermodalContainers.Coding.TypeCodes

  #use IntermodalContainers.SerialParser

  def parse(code) do
    try do
      parse!(code)
    rescue
      e in ParseError -> {:error, e.message}
    end
  end

  def parse!(code) when byte_size(code) == 4 do
    parse_step({code, 0, %DooDoo{}})
  end

  defp parse_step({_code, 0, %{}} = parse_state) do
    validator = validateSize(:length)
    consume(parse_state, 1, validator ) # fn s -> %{ s |  }) #idea: if we pass updateFn
  end

  defp parse_step({_code, 1, %{}} = parse_state) do
    validator = validateSize(:width)
    consume(parse_state, 1, validator)
  end

  defp parse_step({_code, 1, _} = parse_state) do
    validator = validateSize(:height)
    consume(parse_state, 1, validator)
  end

  defp parse_step({_code, 2, _} = parse_state) do
    validator = &validate(:type, 2, &1)
    consume(parse_state, 2, validator)
  end

  defp parse_step({_, 4, result}), do: result

  defp validateSize(key), do: &validate(key, 1, &1)

  defp validate(key, size, code) do
    cond do byte_size(code) != size ->
        {:error, "size code should be #{size} characters, got #{byte_size(code)}"}
      lookup(key, code) == nil ->
        {:error, "no #{Atom.to_string(key)}code for #{code}"}
      true ->
        {:ok, key, code}
    end
  end

  defp lookup(:length, code), do: SizeCodes.get_length(code)
  defp lookup(:width,  code), do: SizeCodes.get_width(code)
  defp lookup(:height, code), do: SizeCodes.get_height(code)
  defp lookup(:type, code), do: TypeCodes.get(code)

   def consume({code, position, res}, size, validator) do
     {target, rest} = String.split_at(code, size)

     validator.(target)
     |> advance(rest, position + size, res)
   end

   def advance({:error, _reason} = err, _code, _position, _parsed_container_number), do: err

   def advance({:ok, key, val}, remainder, next_position, intermediate_result) do
     intermediate_result = Map.update!(intermediate_result, key, fn _old -> val end)
     parse_step({remainder, next_position, intermediate_result})
   end

end
