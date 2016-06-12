defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(string) :: String.t()

  @word_delimiter ~r/[A-Z]|\b\w/
  def abbreviate(string) do
    string
    |> split_string
    |> Enum.join
    |> String.upcase
  end

  defp split_string(str) do
    Regex.scan(@word_delimiter, str)
  end
end
