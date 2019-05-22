defmodule IntermodalContainers.ContainerNumber.ParserTest do
  use ExUnit.Case

  alias IntermodalContainers.ContainerNumber
  alias IntermodalContainers.ContainerNumber.Parser

  test "parse rejects numbers" do
    assert {:error, _} = Parser.parse(123)
  end

  test "parse rejects strings with binary legnth less than 11" do
    assert {:error, _} = Parser.parse("ABC")
  end

  test "parse rejects strings with binary length greater than 11" do
    assert {:error, _} = Parser.parse("ABCDEFGHIJKLMNOP")
  end

  test "parse rejects strings with characters not defined in the alphabet" do
    assert {:error, "Owner code must be three capital letters. Got !@#"} =
             Parser.parse("!@#$%^&*()_")
  end

  test "parse accepts CSQU3054383" do
    assert {:ok,
            %ContainerNumber{
              category_identifier: "U",
              check_digit: "3",
              owner_code: "CSQ",
              serial_number: "305438"
            }} = Parser.parse("CSQU3054383")
  end

end
