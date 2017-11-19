fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

rem = fn (a, b) -> rem(a,b) end

take = fn a -> fizzbuzz.(rem.(a,3), rem.(a,5), a) end
