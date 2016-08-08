fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

IO.puts fizz_buzz.(0,1,2)
IO.puts fizz_buzz.(4,0,2)
IO.puts fizz_buzz.(4,9,2)
IO.puts fizz_buzz.(0,0,2)

f3 = fn
  (n) -> fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts "------"
IO.puts f3.(10)
IO.puts f3.(11)
IO.puts f3.(12)
IO.puts f3.(13)
IO.puts f3.(14)
IO.puts f3.(15)
IO.puts f3.(16)

def application do
  [application: [:logger, :ranch],
    mod: {Cowgirl, []}]
end

f4 = fn
end
