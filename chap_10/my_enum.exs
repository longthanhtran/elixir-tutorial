defmodule MyEnum do
  def all?(list, func), do: _all?(list, func)

  defp _all?([], _func), do: true
  defp _all?([head|tail], func) do
    if func.(head) do
      _all?(tail, func)
    else
      false
    end
  end

  def each(list, func), do: _each(list, func)
  defp _each([], _func), do: []
  defp _each([head|tail], func), do: [ func.(head)| _each(tail, func) ]
end

