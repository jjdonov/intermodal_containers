defmodule IntermodalContainers.Check do

  alias IntermodalContainers.ContainerNumber
  alias IntermodalContainers.Alphabet

  def check(%ContainerNumber{check_digit: check_digit} = container_number) do
    actual_check_digit = String.to_integer(check_digit)
    computed_check_digit = compute_check_sum(container_number)
                           |> compute_check_digit()
    computed_check_digit == actual_check_digit
  end

  def compute_check_digit(check_sum) do
    elevend = trunc(check_sum / 11) * 11
    check_sum - elevend
  end

  def compute_check_sum(%ContainerNumber{} = container_number) do
    raw_vals(container_number)
    |> Enum.flat_map(&String.codepoints(&1))
    |> Enum.map(&map_point(&1))
    |> Enum.with_index()
    |> Enum.map(&calculate_step(&1))
    |> Enum.sum()
  end

  defp raw_vals(%ContainerNumber{} = container) do
    [container.owner_code, container.category_identifier, container.serial_number]
  end

  def map_point(point) do
    case Alphabet.contains(point) do
      true ->
        Alphabet.get(point)
      false ->
        raise "Illegal point: #{point}"
    end
  end

  def calculate_step({val, step}) do
    val * :math.pow(2, step)
  end
end
