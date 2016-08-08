{:ecto, "~> 0.1.0"}

IO.puts "Hello Elixir!"

handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error : #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("Elixir.exs"))
IO.puts handle_open.(File.open("noexisting"))
