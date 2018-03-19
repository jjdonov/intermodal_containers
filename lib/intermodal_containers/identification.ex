defmodule IntermodalContainers.Identification do

  alias IntermodalContainers.Alphabet
  alias IntermodalContainers.ContainerNumber

  @doc """
  If code is 11 characters in length and contains only characters from the
  expected alphabet, then return IntermodalContainers.ContainerNumber comprised
  of the component parts.
  """
  def parse(code) when is_binary(code) do
    case byte_size(code) do
      11 ->
        owner_code = String.slice(code, 0..2)
        category_identifier = String.slice(code, 3..3)
        serial_number = String.slice(code, 4..9)
        check_digit = String.slice(code, 10..10)
        %ContainerNumber{
          owner_code: owner_code,
          category_identifier: category_identifier,
          serial_number: serial_number,
          check_digit: check_digit
        }
      _other ->
        {:error, "ISO 6346 container codes are expected to be 11 characters long"}
    end
  end

end
