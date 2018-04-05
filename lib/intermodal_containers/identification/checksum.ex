defmodule IntermodalContainers.Identification.Checksum do
  alias IntermodalContainers.ChecksumError
  alias IntermodalContainers.Identification.Alphabet
  alias IntermodalContainers.Identification.ContainerNumber
  alias IntermodalContainers.Identification.Parser

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

  defp compute_sum(%ContainerNumber{} = container_number) do
    raw_vals(container_number)
    |> Enum.flat_map(&String.codepoints(&1))
    |> compute_sum_base()
  end

  defp compute_sum(slug) do
    slug
    |> String.codepoints()
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

  defp raw_vals(container_number)
       when is_binary(container_number) and byte_size(container_number) == 11 do
    {to_sum, check_digit} = String.split_at(container_number, 10)
    {to_sum, String.to_integer(check_digit)}
  end

  defp raw_vals(str), do: raise("can't dissect #{inspect(str)}")

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
