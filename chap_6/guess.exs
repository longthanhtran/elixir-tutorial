defmodule Chop do
  def guess(num, range = from..to) do
    guess = div(from+to, 2)
    IO.puts "It is #{guess}"
    can_be(num, guess, range)
  end

  def can_be(guess, guess, _) do
    IO.puts "#{guess}"
  end

  def can_be(num, guess, low.._high)
  when num < guess, do:
    guess(num, low..guess-1)

  def can_be(num, guess, _low..high)
  when num > guess, do:
    guess(num, guess+1..high)
end