defmodule ArrSum do
  def of([], total \\ 0), do: total
  def of([ head|tail ], total), do: of(tail, head+total)
end
