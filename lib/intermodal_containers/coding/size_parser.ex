defmodule IntermodalContainers.Size.Parser do

  alias IntermodalContainers.ParseError

  alias IntermodalContainers.Size.Length
  alias IntermodalContainers.Size.Width
  alias IntermodalContainers.Size.Height
  alias IntermodalContainers.Size.ExternalDimensions

  def parse(code) do
    try do
      parse!(code)
    rescue
      e in ParseError -> {:error, e.message}
    end
  end

  def parse!(code) when byte_size(code) == 2 do
    {first, second} = String.split_at(code, 1)
    length = parse_l(first)
    {width, height} = parse_wh(second)
    %ExternalDimensions{length: length, width: width, height: height}
  end

  def parse!(code) do
    raise %ParseError{message: "unexpected size code #{inspect code}"}
  end

  defp parse_l(code) when byte_size(code) == 1 do
    Length.get(code)
    |> assert_not_nil("length", nil)
  end

  defp parse_wh(code) when byte_size(code) == 1 do
    w = Width.get(code)
        |> assert_not_nil("width", nil)
    h = Height.get(code)
        |> assert_not_nil("height", nil)
    {w, h}
  end

  defp assert_not_nil(nil, code_type, position), do: parse_error(code_type, position)

  defp assert_not_nil(result, _, _) do
    result
  end

  defp parse_error(code_type, position) do
    raise %ParseError{message: "unnasigned #{code_type} code", position: position}
  end
end
