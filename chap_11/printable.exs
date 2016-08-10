defmodule Printable do
  def is_printable([]), do: true
  def is_printable([head|tail])
  when (head > 32 and head < 126) do
    is_printable(tail)
  end
  def is_printable([_|_]), do: false

  # Another, more elegant way
  def printable?(args), do: Enum.all?(args, fn ch -> ch in ?\s..?~ end)
end
