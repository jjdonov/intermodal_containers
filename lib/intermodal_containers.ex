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

  ## Examples

  iex> IntermodalContainers.parse_container_number("CSQU3054383")
  {:ok,
   %IntermodalContainers.ContainerNumber{
    category_identifier: "U",
    check_digit: "3",
    owner_code: "CSQ",
    serial_number: "305438"
  }}

  """
  def parse_container_number(container_number) do
    ContainerNumber.parse(container_number)
  end

  @doc """
  Performs checksum on the given container number.

  ## Examples

  iex> IntermodalContainers.checksum("CSQU3054383")
  true

  """
  def checksum(container_number) do
    Checksum.check(container_number)
  end

  @doc """
  Parse a container code string. 
  Returns an `IntermodalContainers.ContainerCode` struct.

  Semantic meaning of the consituent parts of the code
  are provided by the struct.

  ## Examples

  iex> IntermodalContainers.parse_container_code("20GP")
  {:ok,
   %IntermodalContainers.ContainerCode{
     height: %IntermodalContainers.ContainerCode.SimpleCode{
       code_character: "0",
       inches: 96,
       is_unassiged: false,
       mm: 2438
     },
     length: %IntermodalContainers.ContainerCode.SimpleCode{
       code_character: "2",
       inches: 240,
       is_unassiged: false,
       mm: 6068
     },
     type: %IntermodalContainers.ContainerCode.TypeCode{
       characteristics: nil,
       code: "G",
       designation: "General purpose container without ventilation",
       detailed_type_code: nil,
       group_code: "GP"
     },
     width: %IntermodalContainers.ContainerCode.SimpleCode{
       code_character: "0",
       inches: nil,
       is_unassiged: false,
       mm: 2438
     }
   }}

  """
  def parse_container_code(container_code) do
    ContainerCode.parse(container_code)
  end
end
