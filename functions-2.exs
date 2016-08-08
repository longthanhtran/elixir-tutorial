functions2 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

# IO.puts functions2.(0,0,1)
# IO.puts functions2.(0,3,1)
# IO.puts functions2.(2,3,1)

functions3 = fn
  # (n) -> "Result: #{n}"
  (n) -> "#{functions2.(rem(n,3), rem(n,5), n)}"
end

IO.puts functions3.(10)
IO.puts functions3.(11)
IO.puts functions3.(12)
IO.puts functions3.(13)
IO.puts functions3.(14)
IO.puts functions3.(15)
IO.puts functions3.(16)
