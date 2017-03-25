defmodule Chop do

  def guess(actual, range = low..high) do
    guess = div(low+high, 2)
    IO.puts "It is #{guess}"
    check_guess(actual, range, guess)
  end

  def check_guess(actual, _low.._high, actual) do
    IO.puts actual
  end

  def check_guess(actual, _low..high, guess)
  when actual > guess do
    guess(actual, guess..high)
  end

  def check_guess(actual, low.._high, guess)
  when actual < guess do
    guess(actual, low..guess)
  end

end

Chop.guess(273, 1..1_000)
