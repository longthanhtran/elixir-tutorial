defmodule MyList do
  def max([ head | [] ]), do: head
  def max([ head|tail ]), do: Kernel.max(head, max(tail))
end
