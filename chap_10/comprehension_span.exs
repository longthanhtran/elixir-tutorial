defmodule MyList do
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [ from | span(from+1, to) ]
  end

  def primes(n) do
    for num <- span(2, n), is_primes?(num), do: num
  end

  def is_primes?(2), do: true
  def is_primes?(num) do
    Enum.all?(span(2, num - 1), &(rem(num, &1) != 0))
  end
end

