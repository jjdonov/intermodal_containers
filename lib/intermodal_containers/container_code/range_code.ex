defmodule IntermodalContainers.ContainerCode.RangeCode do
  alias IntermodalContainers.ContainerCode.RangeBound, as: Bound
  defstruct [:code_character, lower: %Bound{}, upper: %Bound{}]
end
