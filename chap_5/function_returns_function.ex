fun1 = fn ->
  fn ->
    "Hello"
  end
end

fun1.().()

greeter = fn name -> (fn -> "Hello #{name}" end) end
greeter.("Dave")

add_n = fn n -> (fn other -> n + other end) end
add_two = add_n.(2) # to n
add_five = add_n(5)

add_two.(3) # 5 with 3 to other
add_five.(7) # 12 with 7 to other

prefix = fn name -> (fn object -> name <> " " <> object end) end
prefix.("Elixir").("Rocks") # Elixir Rocks
