defmodule IntermodalContainers do
  alias IntermodalContainers.ContainerCode
  alias IntermodalContainers.ContainerNumber
  alias IntermodalContainers.ContainerNumber.Checksum

  @moduledoc """
  Intermodal Containers aims to be a compliant and feature full implementation of ISO 6346.

  This module provides parsing functionality for container codes (size, type, purpose),
  and container numbers (identification).
  Checksum functionality is also provided to verify the correctness of container numbers.

  """

  @doc """
  Parse a container number string.
  Returns an `IntermodalContainers.ContainerNumber` struct.

  """
  def parse_container_number(container_number) do
    ContainerNumber.parse(container_number)
  end

  @doc """
  Performs checksum on the given container number.
  """
  def checksum(container_number) do
    Checksum.check(container_number)
  end

  @doc """
  Parse a container code string. 
  Returns an `IntermodalContainers.ContainerCode` struct.

  Semantic meaning of the consituent parts of the code
  are provided by the struct.
  """
  def parse_container_code(container_code) do
    ContainerCode.parse(container_code)
  end
end
