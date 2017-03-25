defmodule MyEnum do
  def all?([], _), do: true
  def all?([head|tail], func) do
    func.(head) && all?(tail, func)
  end

  def each([], _), do: nil
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  # Enum.filter([1,2,3,4,5], &(&1 < 4))
  def filter([], _), do: []
  def filter(list = [head|_tail], func) do
    _filter(func.(head), list, func)
  end
  def _filter(_check_value = true, [head|tail], func) do
    [head | filter(tail, func)]
  end
  def _filter(_check_value = false, [_head|tail], func) do
    filter(tail, func)
  end

  # Enum.split([1,2,3,4,5,6,7], 3) -> {[1,2,3], [4,5,6,7]}
  def split([head|tail], count) when count > 0 do
    { left, right } = split(tail, count - 1)
    {[head | left], right}
  end
  def split(list, _count), do: {[], list}

  # Enum.take([1,2,3,4,5,6], 3) -> [1,2,3]
  def take([head|tail], count) when count > 0 do
    [head | take(tail, count - 1)]
  end
  def take(_list, _count), do: []

  # def flatten([]), do: []
  # def flatten([head|tail]) do
  #   flatten(head)++flatten(tail)
  # end
  # def flatten(head), do: [ head ]

  # Another implementation from JV
  def flatten(list), do: do_flatten(list, [])
  def do_flatten([h|t], tail) when is_list(h) do
    do_flatten(h, do_flatten(t, tail))
  end
  def do_flatten([h|t], tail) do
    [h|do_flatten(t, tail)]
  end
  def do_flatten([], tail) do
    tail
  end
end

# list = [1,2,3,4,5,6,7,8]
# IO.inspect MyEnum.all?([1,2,3,4], &(&1 < 5))
# MyEnum.each([1,2,3,4], &(IO.puts &1 * 3))
# IO.inspect MyEnum.filter(list, &(&1 > 2))
# IO.inspect MyEnum.split(list, 3)
# IO.inspect MyEnum.take(list, 4)
list_2 = [[1,2],3,[4,5,[6]]]
IO.inspect MyEnum.flatten(list_2)
