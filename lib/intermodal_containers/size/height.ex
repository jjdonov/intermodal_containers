defmodule IntermodalContainers.Size.Height do
  alias IntermodalContainers.Size.SimpleCode
  alias IntermodalContainers.Size.RangeCode
  alias IntermodalContainers.Size.RangeBound, as: Bound

  @all [
    %SimpleCode{code_character: "0", mm: 2438, inches: 8 * 12},
    %SimpleCode{code_character: "2", mm: 2591, inches: 8 * 12 + 6},
    %SimpleCode{code_character: "C", mm: 2591, inches: 8 * 12 + 6},
    %SimpleCode{code_character: "L", mm: 2591, inches: 8 * 12 + 6},
    %SimpleCode{code_character: "4", mm: 2743, inches: 9 * 12},
    %SimpleCode{code_character: "D", mm: 2743, inches: 9 * 12},
    %SimpleCode{code_character: "M", mm: 2743, inches: 9 * 12},
    %SimpleCode{code_character: "5", mm: 2895, inches: 9 * 12 + 6},
    %SimpleCode{code_character: "E", mm: 2895, inches: 9 * 12 + 6},
    %SimpleCode{code_character: "N", mm: 2895, inches: 9 * 12 + 6},
    %RangeCode{
      code_character: "6",
      lower: %Bound{mm_limit: 2895, inches_limit: 9 * 12 + 6, inclusive: false}
    },
    %RangeCode{
      code_character: "F",
      lower: %Bound{mm_limit: 2895, inches_limit: 9 * 12 + 6, inclusive: false}
    },
    %RangeCode{
      code_character: "P",
      lower: %Bound{mm_limit: 2895, inches_limit: 9 * 12 + 6, inclusive: false}
    },
    %SimpleCode{code_character: "8", mm: 1295, inches: 4 * 12 + 3},
    %RangeCode{code_character: "9", upper: %Bound{mm_limit: 1219, inches_limit: 4 * 12}}
  ]

  @map Map.new(@all, fn h -> {h.code_character, h} end)

  def get(code_character), do: Map.get(@map, code_character)
end
