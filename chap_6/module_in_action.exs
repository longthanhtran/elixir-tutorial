defmodule Mod do
  def func1, do: IO.puts "in func1"
  def func2, do: (func1; IO.puts "in func2")
end