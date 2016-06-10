require IEx

defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map

  def count(words) when is_list(words) do
    Enum.reduce(words, %{}, &update_count/2)
  end

  def count(sentence) do
    sentence
    |> String.split(" ")
    |> count
  end

  def update_count(word, acc) do
    Map.update(acc, word, 1, fn(value) -> value + 1 end)
  end
end
