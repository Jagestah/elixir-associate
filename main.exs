input1 = "-+-++++++++++-++++++++++"
input2 = "+-+"
input3 = "-+-+-"

defmodule Recursion do
  def count(input) do
    do_count(String.graphemes(input), "+", 0)
  end

  defp do_count([], _, flip_count) do
    flip_count
  end

  defp do_count([head | tail], last_coin_face, flip_count ) when head == last_coin_face do
    do_count(tail, head, flip_count)
  end

  defp do_count([head | tail], last_coin_face, flip_count ) when head != last_coin_face do
    do_count(tail, head, flip_count + 1)
  end
end

Recursion.count(input1)
Recursion.count(input2)
Recursion.count(input3)
