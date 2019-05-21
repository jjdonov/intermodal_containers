defmodule IntermodalContainers.ContainerNumber.ChecksumTest do
  use ExUnit.Case

  alias IntermodalContainers.ContainerNumber.Checksum
  alias IntermodalContainers.ContainerNumber

  test "computes known check digit" do
    assert true = Checksum.check("CSQU3054383")
  end

  test "computes for known ContainerNumber" do
    container_number = %ContainerNumber{
      category_identifier: "U",
      check_digit: "3",
      owner_code: "CSQ",
      serial_number: "305438"
    }

    assert true = Checksum.check(container_number)
  end

  test "returns :error when alphabet contains undefined code points" do
    assert {:error, _} = Checksum.check("!!!!!!!!!!!")
  end
end
