# Module name is actually atom
is_atom IO # true
to_string IO # "Elixir.IO"

:"Elixir.IO" === IO # true

IO.puts 123 # 123
:"Elixir.IO".puts 123 # 123