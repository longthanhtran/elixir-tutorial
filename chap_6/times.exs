defmodule Times do
  def double(n) do # def double(n), do: n * 2
    n * 2
  end

  def triple(n), do: n * 3

  def quadruple(n), do: double(double(n))
end

Times.double 4
