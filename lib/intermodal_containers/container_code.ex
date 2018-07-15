defmodule IntermodalContainers.ContainerCode do
  alias IntermodalContainers.Code.Parser

  defstruct [:length, :width, :height,  :type]

  def parse(container_code) do
    Parser.parse(container_code)
  end
end
