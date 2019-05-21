defmodule IntermodalContainers.ContainerCode.SizeCodes do
  @moduledoc false

  alias IntermodalContainers.ContainerCode.SimpleCode
  alias IntermodalContainers.ContainerCode.RangeCode
  alias IntermodalContainers.ContainerCode.RangeBound, as: Bound

  @lengths [
    %SimpleCode{code_character: "1", mm: 2991, inches: 10 * 12},
    %SimpleCode{code_character: "2", mm: 6068, inches: 20 * 12},
    %SimpleCode{code_character: "3", mm: 9125, inches: 30 * 12},
    %SimpleCode{code_character: "4", mm: 12192, inches: 40 * 12},
    %SimpleCode{code_character: "A", mm: 7150},
    %SimpleCode{code_character: "B", mm: 7315, inches: 24 * 12},
    %SimpleCode{code_character: "C", mm: 7430, inches: 24 * 12 + 6},
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

  @widths [
    %SimpleCode{code_character: "0", mm: 2438},
    %SimpleCode{code_character: "2", mm: 2438},
    %SimpleCode{code_character: "4", mm: 2438},
    %SimpleCode{code_character: "5", mm: 2438},
    %SimpleCode{code_character: "6", mm: 2438},
    %SimpleCode{code_character: "8", mm: 2438},
    %SimpleCode{code_character: "9", mm: 2438},
    %RangeCode{
      code_character: "C",
      lower: %Bound{mm_limit: 2438},
      upper: %Bound{mm_limit: 2500, inclusive: true}
    },
    %RangeCode{
      code_character: "D",
      lower: %Bound{mm_limit: 2438},
      upper: %Bound{mm_limit: 2500, inclusive: true}
    },
    %RangeCode{
      code_character: "E",
      lower: %Bound{mm_limit: 2438},
      upper: %Bound{mm_limit: 2500, inclusive: true}
    },
    %RangeCode{
      code_character: "F",
      lower: %Bound{mm_limit: 2438},
      upper: %Bound{mm_limit: 2500, inclusive: true}
    },
    %RangeCode{code_character: "L", lower: %Bound{mm_limit: 2500}},
    %RangeCode{code_character: "M", lower: %Bound{mm_limit: 2500}},
    %RangeCode{code_character: "N", lower: %Bound{mm_limit: 2500}},
    %RangeCode{code_character: "P", lower: %Bound{mm_limit: 2500}}
  ]

  @heights [
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

  @length_map Map.new(@lengths, fn l -> {l.code_character, l} end)
  @width_map Map.new(@widths, fn w -> {w.code_character, w} end)
  @height_map Map.new(@heights, fn h -> {h.code_character, h} end)

  def get_length(code_character) do
    Map.get(@length_map, code_character)
  end

  def get_width(code_character) do
    Map.get(@width_map, code_character)
  end

  def get_height(code_character) do
    Map.get(@height_map, code_character)
  end
end
