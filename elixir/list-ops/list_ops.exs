require IEx

defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count(list=[]) do
    0
  end

  def count(list=[], acc) do
    acc
  end

  def count(list) do
    [first | rest] = list
    count(rest, 1)
  end

  def count(list, accumulator) do
    [first | rest] = list
    count(rest, (accumulator + 1))
  end

  @spec reverse(list) :: list
  def reverse(list) do
    reverse(list, [])
  end

  def reverse([], accumulator) do
    accumulator
  end

  def reverse(list, accumulator) do
    [first | rest ] = list
    reverse(rest, [first | accumulator])
  end

  @spec map(list, (any -> any)) :: list
  def map(l=[], f) do
    []
  end

  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter([], f) do
    []
  end

  def filter(list, function) do
    [first | rest] = list
    if function.(first) == true do
      filter(rest, function, [first])
    else
      filter(rest, function, [])
    end
  end

  def filter(list, function, accumulator) do
    [first | rest ] = list
    if function.(first) == true do
      IEx.pry
      filter(rest, function, [first | accumulator])
    else
      filter(rest, function, accumulator)
    end
  end

  def filter([], function, accumulator) do
    accumulator
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce(l, acc, f) do

  end

  @spec append(list, list) :: list
  def append(a, b) do

  end

  @spec concat([[any]]) :: [any]
  def concat(ll) do

  end
end
