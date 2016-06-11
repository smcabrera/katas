defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(string) :: String.t()
  def abbreviate(string) do
    string
    |> split_string
    |> first_letters
    |> Enum.join
    |> String.upcase
  end

  defp split_string(str) do
    String.split str
  end

  defp first_letters(word_list) do
    Enum.map(word_list, fn(word) -> String.at(word, 0) end)
  end
end
