defmodule Parser do
  import Atom
  def calculate(str) do
    { x, op, y } = _parse(str, { 0, :op, 0 })
    apply :erlang, list_to_atom(op), [x, y]
  end

  defp _parse([], acc), do: acc
  defp _parse([h|t], {a, b, c}) when h in ?0..?9, do: _parse(t, {a, b, c * 10 + h - ?0})
  defp _parse([h|t], {_, _, c}) when h in '+-*/', do: _parse(t, {c, [h], 0})
  defp _parse([_,t], acc), do: _parse(t, acc)
end
