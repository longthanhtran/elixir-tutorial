defmodule MyList do
  def square([]), do: []
  def square([head|tail]), do: [head*head | square(tail)]
end

your_list = MyList.square([1,2,3,4])
IO.puts "#{your_list}"
