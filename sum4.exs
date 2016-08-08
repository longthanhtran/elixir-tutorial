defmodule ArraySum do
  def of([]), do: 0
  def of([head|tail]), do: head + of(tail)
end
