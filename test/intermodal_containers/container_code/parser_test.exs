defmodule IntermodalContainers.ContainerCode.ParserTest do
  use ExUnit.Case
  alias IntermodalContainers.ContainerCode.Parser

  test "it accepts 20GP" do
    assert {:ok, _} = Parser.parse("20GP")
  end

  # Commented out codes are 
  # 1. Present on wikipedia
  # 2. Not present in my copy(version?) of the spec
  @wikipedia_examples [
    "22V2",
    "22V3",
    "25GP",
    "26GP",
    "26HR",
    "28TG",
    "28UT",
    "28VH",
    "29PL",
    "2EGP",
    "42GP",
    "42G1",
    "42HR",
    "42PC",
    "42P8",
    "42P9",
    "42PF",
    "42PS",
    #"42RC",
    "42RS",
    "42RT",
    "42SN",
    "42TD",
    "42T6",
    "42TG",
    "42TN",
    #"42UP",
    "42UT",
    "45BK",
    "45GP",
    "45G1",
    "45PC",
    "45P8",
    # "45RC",
    "45RT",
    "45UT",
    #"45UP",
    "46HR",
    "48TG",
    "49PL",
    "4CGP",
    "L0GP",
    "L2GP",
    "L5GP"
  ]

  @wikipedia_examples
  |> Enum.each(fn(container_code) ->
    test "parse accepts #{container_code}" do
      assert {:ok, _} = Parser.parse(unquote(container_code))
    end
  end)

end
