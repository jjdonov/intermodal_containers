defmodule IntermodalContainers.Size.Length do

  alias IntermodalContainers.Size.SimpleCode

  @all [
    %SimpleCode{code_character: "1", mm: 2991,  inches: 10 * 12},
    %SimpleCode{code_character: "2", mm: 6068,  inches: 20 * 12},
    %SimpleCode{code_character: "3", mm: 9125,  inches: 30 * 12},
    %SimpleCode{code_character: "4", mm: 12192, inches: 40 * 12},
    %SimpleCode{code_character: "A", mm: 7150},
    %SimpleCode{code_character: "B", mm: 7315,  inches: 24 * 12},
    %SimpleCode{code_character: "C", mm: 7430,  inches: 24 * 12 + 6},
    %SimpleCode{code_character: "D", mm: 7450},
    %SimpleCode{code_character: "E", mm: 7820},
    %SimpleCode{code_character: "F", mm: 8100},
    %SimpleCode{code_character: "G", mm: 12500, inches: 41 * 12},
    %SimpleCode{code_character: "H", mm: 13106, inches: 43 * 12},
    %SimpleCode{code_character: "K", mm: 13600},
    %SimpleCode{code_character: "L", mm: 13716, inches: 45 * 12},
    %SimpleCode{code_character: "M", mm: 14630, inches: 48 * 12},
    %SimpleCode{code_character: "N", mm: 14935, inches: 49 * 12},
    %SimpleCode{code_character: "P", mm: 16154}
  ]

  @map Enum.map(@all, fn(l) -> {l.code_character, l} end) |> Map.new

  def get(code_character) do
    Map.get(@map, code_character)
  end

  def get_map() do
    @map
  end

end
