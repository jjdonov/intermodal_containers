defmodule IntermodalContainers.Size.RangeCode do
  alias IntermodalContainers.Size.RangeBound, as: Bound
  defstruct [:code_character, lower: %Bound{}, upper: %Bound{}]
end


