defmodule IntermodalContainers.ContainerNumber.Checksum do
  @moduledoc false

  alias IntermodalContainers.ContainerNumber

  alias IntermodalContainers.ContainerNumber.Alphabet
  alias IntermodalContainers.ContainerNumber.Parser

  @type container_number() :: String.t() | %ContainerNumber{}

  @spec check(container_number()) :: boolean()
  def check(%ContainerNumber{check_digit: check_digit} = container_number) do
    actual = String.to_integer(check_digit)
    computed = compute_check_digit(container_number)
    compare(actual, computed)
  end

  def check(container_number) do
    case Parser.parse(container_number) do
      {:ok, container_number} ->
        check(container_number)

      {:error, message} ->
        {:error, message}
    end
  end

  defp compare(actual, computed) do
    actual == computed
  end

  defp compute_check_digit(container_number) do
    container_number
    |> compute_sum
  end

  @spec compute_sum(%ContainerNumber{}) :: integer()
  defp compute_sum(%ContainerNumber{} = container_number) do
    raw_vals(container_number)
    |> Enum.flat_map(&String.codepoints(&1))
    |> compute_sum_base()
  end

  defp compute_sum_base(code_points) do
    code_points
    |> Enum.map(&map_point(&1))
    |> Enum.with_index()
    |> Enum.map(&weight(&1))
    |> Enum.sum()
    |> rem(11)
  end

  defp raw_vals(%ContainerNumber{} = container) do
    [container.owner_code, container.category_identifier, container.serial_number]
  end

  defp map_point(point) do
    case Alphabet.contains(point) do
      true ->
        Alphabet.get(point)

      false ->
        raise "Illegal point: #{point}"
    end
  end

  defp weight({val, step}) do
    val * trunc(:math.pow(2, step))
  end
end
