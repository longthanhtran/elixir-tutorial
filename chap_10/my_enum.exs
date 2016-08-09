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

  def filter(list, func), do: _filter(list, func)
  defp _filter([], _func), do: []
  defp _filter([head|tail], func) do
    if func.(head) do
      [ head | _filter(tail, func) ]
    else
      _filter(tail, func)
    end
  end

  def split([head|tail], num) when num > 0 do
    { left, right } = split(tail, num - 1)
    { [head | left], right }
  end
  def split(list, _num), do: {[], list}

  def take([head|tail], num) when num > 0 do
    [head|take(tail, num-1)]
  end
  def take(_list, _count), do: []

  def flatten(list), do: _flatten(list, [])

  defp _flatten([h|t], tail) when is_list(h) do
    _flatten(h, _flatten(t, tail))
  end
  defp _flatten([h|t], tail) do
    [h|_flatten(t, tail)]
  end
  defp _flatten([], tail) do
    tail
  end
end
