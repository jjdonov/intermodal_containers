defmodule IntermodalContainers.Size.Width do

  alias IntermodalContainers.Size.SimpleCode
  alias IntermodalContainers.Size.RangeCode
  alias IntermodalContainers.Size.RangeBound, as: Bound

  @all [
    %SimpleCode{ code_character: "0", mm: 2438},
    %SimpleCode{ code_character: "2", mm: 2438},
    %SimpleCode{ code_character: "4", mm: 2438},
    %SimpleCode{ code_character: "5", mm: 2438},
    %SimpleCode{ code_character: "6", mm: 2438},
    %SimpleCode{ code_character: "8", mm: 2438},
    %SimpleCode{ code_character: "9", mm: 2438},
    %RangeCode{  code_character: "C", lower: %Bound{mm_limit: 2438}, upper: %Bound{mm_limit: 2500, inclusive: true}},
    %RangeCode{  code_character: "D", lower: %Bound{mm_limit: 2438}, upper: %Bound{mm_limit: 2500, inclusive: true}},
    %RangeCode{  code_character: "E", lower: %Bound{mm_limit: 2438}, upper: %Bound{mm_limit: 2500, inclusive: true}},
    %RangeCode{  code_character: "F", lower: %Bound{mm_limit: 2438}, upper: %Bound{mm_limit: 2500, inclusive: true}},
    %RangeCode{  code_character: "L", lower: %Bound{mm_limit: 2500}},
    %RangeCode{  code_character: "M", lower: %Bound{mm_limit: 2500}},
    %RangeCode{  code_character: "N", lower: %Bound{mm_limit: 2500}},
    %RangeCode{  code_character: "P", lower: %Bound{mm_limit: 2500}}
  ]

  @map Map.new(@all, fn(w) -> {w.code_character, w} end)

  def get(code_character), do: Map.get(@map, code_character)
end
