defmodule MyList do
  def mapsum(list, func), do: _mapsum(list, func, 0)

  defp _mapsum([], _func,         total), do: total
  defp _mapsum([head|tail], func, total), do: _mapsum(tail, func, func.(head)+total)
end
