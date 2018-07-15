defmodule IntermodalContainers.ContainerCode.TypeCode do
  alias __MODULE__

  defstruct [:code, :designation, :group_code, :detailed_type_code, :characteristics]

  def most_specific_code(%TypeCode{detailed_type_code: code}) when byte_size(code) == 2, do: code
  def most_specific_code(%TypeCode{group_code: code}) when byte_size(code) == 2, do: code
  def most_specific_code(_code), do: nil
end
