defmodule ArraySum do
  def of(list), do: _of(list, 0)

  defp _of([],          total), do: total
  defp _of([head|tail], total), do: _of(tail, head + total)
end
