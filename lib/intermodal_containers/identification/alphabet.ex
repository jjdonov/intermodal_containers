defmodule IntermodalContainers.Identification.Alphabet do
  @letters %{
    "A" => 10,
    "B" => 12,
    "C" => 13,
    "D" => 14,
    "E" => 15,
    "F" => 16,
    "G" => 17,
    "H" => 18,
    "I" => 19,
    "J" => 20,
    "K" => 21,
    "L" => 23,
    "M" => 24,
    "N" => 25,
    "O" => 26,
    "P" => 27,
    "Q" => 28,
    "R" => 29,
    "S" => 30,
    "T" => 31,
    "U" => 32,
    "V" => 34,
    "W" => 35,
    "X" => 36,
    "Y" => 37,
    "Z" => 38
  }

  @digits %{
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9
  }

  @alphabet Map.merge(@letters, @digits)

  def get_alphabet() do
    @alphabet
  end

  def contains(point) do
    Map.has_key?(@alphabet, point)
  end

  def get(point) do
    Map.get(@alphabet, point)
  end

  def is_digit(point) do
    Map.has_key?(@digits, point)
  end

  def all_digits(str) do
    all(str, &is_digit/1)
  end

  def is_letter(point) do
    Map.has_key?(@letters, point)
  end

  def all_letters(str) do
    all(str, &is_letter/1)
  end

  defp all(str, fun) do
    str
    |> String.codepoints()
    |> Enum.all?(&fun.(&1))
  end
end
