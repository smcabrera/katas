defmodule Bob do
  def hey(input) do
    cond do
      silence?(input) ->
        "Fine. Be that way!"
      shouting?(input) ->
        "Whoa, chill out!"
      question?(input) ->
        "Sure."
      true ->
        "Whatever."
    end
  end

  defp shouting?(input) do
    !(only_numbers? input ) && all_caps?(input)
  end

  defp question?(input) do
    String.ends_with? input, "?"
  end

  defp silence?(input) do
    String.strip(input) == ""
  end

  defp all_caps?(input) do
    String.upcase(input) == input
  end

  defp only_numbers?(input) do
    String.match?(input, ~r/^(\W|\d)*$/)
  end
end


