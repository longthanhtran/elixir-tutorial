# Tuples

{ 1, 2 }
{ :ok, 42, "next" }
{ :error, :enoent }
{status, count, action} = {:ok, 42, "next"} # pattern matching

# Lists - linked data structure
[ 1, 2, 3 ] ++ [ 4, 5, 6 ]
[1, 2, 3, 4] -- [2, 4] # [1, 3]
1 in [1, 2, 3] # true

# Keywork list module
[ name: "Dave", city: "Dallas", likes: "Programming" ]
[ {name: "Dave"}, {city: "Dallas"}, {likes: "Programming"} ] # actual elixir storage

# Maps - unique key
states = %{ "AL" => "Alabama", "WI" => "Wisconsin" }
states["AL"]

colors = %{ red: 0xff0000, green: 0x00ff00, blue: 0x0000ff }
colors[:red]
colors.green

# Binary
bin = << 1, 2 >>
byte_size bin # 2

bin = <<3 :: size(2), 5 :: size(4), 1 :: size(2)>> # <<213>>
:io.format("~-8.2b~n", :binary.bin_to_list(bin)) # 11010101
