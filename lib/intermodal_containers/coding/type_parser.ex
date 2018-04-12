defmodule IntermodalContainers.Type.Parser do

  alias IntermodalContainers.ParseError

  alias IntermodalContainers.Size.Parser, as: SizeParser
  alias IntermodalContainers.Characteristic.Parser, as: CharacteristicParser

  def parse(code) do
    try do
      parse!(code)
    rescue
      e in ParseError -> {:error, e.message}
    end
  end

  def parse!(code) when byte_size(code) == 4 do
    {first, second} = String.split_at(code, 2)
    size = SizeParser.parse!(first)
    characteristics = CharacteristicsParser.parse!(second)
    {size, characteristics}
  end

end
