defmodule IntermodalContainers.Size.Parser do
  alias IntermodalContainers.Size.Length
  alias IntermodalContainers.Size.Width
  alias IntermodalContainers.Size.Height
  alias IntermodalContainers.Size.ExternalDimensions

  # TODO: error handling

  def parse(code) when is_binary(code) and byte_size(code) == 2 do
    {first, second} = String.split_at(code, 1)
    length = parse_l(first)
    {width, height} = parse_wh(second)
    %ExternalDimensions{length: length, width: width, height: height}
  end

  defp parse_l(code) when is_binary(code) and byte_size(code) == 1 do
    Length.get(code)
  end

  defp parse_wh(code) when is_binary(code) and byte_size(code) == 1 do
    {Width.get(code), Height.get(code)}
  end
end
