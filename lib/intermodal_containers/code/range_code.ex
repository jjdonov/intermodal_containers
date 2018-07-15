defmodule IntermodalContainers.Code.RangeCode do
  alias IntermodalContainers.Code.RangeBound, as: Bound
  defstruct [:code_character, lower: %Bound{}, upper: %Bound{}]
end
