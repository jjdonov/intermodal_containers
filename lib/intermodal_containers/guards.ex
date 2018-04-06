defmodule IntermodalContainers.Guards do
  def test(str) when byte_size(str) < 11 do
    IO.puts "Aha!"
  end
end
