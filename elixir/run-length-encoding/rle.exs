require IEx

defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t

  @encode_string_delimiter ~r/(.)\1*/
  @decode_string_delimiter ~r/\d*\w/
  def encode("") do
    ""
  end

  def encode(string) do
    Regex.scan(@encode_string_delimiter, string)
    #|> Enum.dedup
    |> Enum.map(fn(x) -> "#{String.length(List.first(x))}#{List.last(x)}" end)
    |> Enum.join
  end

  @spec decode(String.t) :: String.t

  def decode(string = "") do
    string
  end

  def decode(string) do
    Regex.scan(@decode_string_delimiter, string)
    |> Enum.flat_map(fn(x) -> combine_letter_and_number(x) end)
    |> Enum.join
  end

  def split_string(string) do
    string
    |> String.codepoints
    |> Enum.chunk(2)
  end

  def combine_letter_and_number(letter_number_pair) do
    number = find_number(letter_number_pair)
    letter = find_letter(letter_number_pair)
    Enum.map(0..number - 1, fn(x) -> letter end)
  end

  defp find_number(letter_number_pair) do
    number = Regex.scan(~r/\d*/, Enum.at(letter_number_pair, 0)) |> List.flatten |> List.first
    {number, _} = Integer.parse(number)
    number
  end

  defp find_letter(letter_number_pair) do
    Regex.scan(~r/\w/, Enum.at(letter_number_pair, 0))
    |> List.flatten
    |> List.last
  end
end

