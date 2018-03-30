defmodule IntermodalContainers.Purpose do
  @moduledoc """
  # Identification
  First character: numeric or alphabetic character representing the length.
  Second character: numeric or alphabetic character representing the width and the height.

  # Purpose
  First character: alphabetic character representing
  the container type.
  Second character: numeric character representing main characteristics related to the container type.
  """

  alias IntermodalContainers.ContainerLength

  def parse(container_code) when is_binary(container_code) and byte_size(container_code) == 4 do
  end

end
