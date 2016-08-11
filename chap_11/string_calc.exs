defmodule StringCalc do
  # @TODO: This does NOT work, to be checked
  def calculate(str) do
    { x, op, y } = _parse(str, {0, :op, 0})
    apply :erlang.list_to_atom(op), [x, y]
  end

  defp _parse([], acc), do: acc
  defp _parse([h|t], {a, b, c}) when h in ?0..?9, do: _parse(t, {a, b, c * 10 + h - ?0})
  defp _parse([h|t], {_, _, c}) when h in '+-*/', do: _parse(t, {c, [h], 0})
  defp _parse([_|t], acc), do: _parse(t, acc)

  # This does work with 'space' between 2 numbers
  def simplest_calc(xs) do
    [num1, operator, num2] = to_string(xs) |> String.split

    apply Kernel, String.to_atom(operator), Enum.map([num1, num2], &String.to_integer/1)
  end


  def safe_calc(str) do
    {x, op, y} = _safe_parse(str, {0, :op, 0})
    op.(x, y)
  end

  defp _safe_parse([], acc), do: acc
  defp _safe_parse([h|t], {a, b, c}) when h in ?0..?9, do: _safe_parse(t, {a, b, c * 10 + h - ?0})
  defp _safe_parse([h|t], {_, _, c}) when h in '+-*/', do: _safe_parse(t, {c, _fn(h), 0})
  defp _safe_parse([_|t], acc), do: _safe_parse(t, acc)

  defp _fn(?+), do: &Kernel.+/2
  defp _fn(?-), do: &Kernel.-/2
  defp _fn(?*), do: &Kernel.*/2
  defp _fn(?/), do: &div/2
end
