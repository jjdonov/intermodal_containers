defmodule IntermodalContainers.ContainerNumber do
  alias IntermodalContainers.ContainerNumber.Parser

  @moduledoc """
  The Container Number serves as the identification for a single intermodal container.

  As defined by ISO 6346, the container number shall consist only of the following elements, all of which shall be included:
  * owner code: three letters
  * equipment category identifier: one letter
  * serial number: six numerals
  * check digit: one numeral
  """
  defstruct owner_code: "",
            category_identifier: "",
            serial_number: "",
            check_digit: ""

  def parse(container_number) do
    Parser.parse(container_number)
  end
end
