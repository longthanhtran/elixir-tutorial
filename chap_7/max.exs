defmodule MyList do
  def max(list), do: _max(list)

  defp _max([head | []]), do: head
  defp _max([head|tail]), do: Kernel.max(head, _max(tail))
end
