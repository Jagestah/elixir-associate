last_coin_face = "+"
input1 = "-+-++++++++++-++++++++++"
input2 = "+-+"
input3 = "-+-+-"

defmodule Recursion do
  def count(input, last_coin_face) do
    do_count(String.graphemes(input), last_coin_face, 0)
  end

  defp do_count([], _, flip_count) do
    flip_count
  end

  defp do_count([head | tail], last_coin_face, flip_count ) when head == last_coin_face do
    do_count(tail, last_coin_face, flip_count)
  end

  defp do_count([head | tail], last_coin_face, flip_count ) when head != last_coin_face do
    last_coin_face = head
    do_count(tail, last_coin_face, flip_count + 1)
  end
end

Recursion.count(input1, last_coin_face)
Recursion.count(input2, last_coin_face)
Recursion.count(input3, last_coin_face)
