defmodule IntermodalContainers.ContainerCode do
  @moduledoc """
  Container Codes indicate the size (specific or range) and type of container.
  
  A container code is comprised of 4 characters:
  * Size: two alphanumeric characters
  * Type: two characters
    * First character: alphebetic character representating type.
    * Second character: When numeric, the character codifies main characteristicss of the type.
      When alphabetic, the type is a part of a general type group.

  For example, 20GP codifies a general purpose container having length 10' and height 8'.
  Whereas 20G0 codifies a general purpose container _with passive vents at the upper part of the cargo_, having length 10' and height 8'.

  """
  alias IntermodalContainers.ContainerCode.Parser

  defstruct [:length, :width, :height,  :type]

  def parse(container_code) do
    Parser.parse(container_code)
  end
end
