prefix = fn (name) ->
  fn (str) ->
    "#{name} #{str}"
  end
end

IO.puts "#{prefix.("I learn").("elixir")}"
