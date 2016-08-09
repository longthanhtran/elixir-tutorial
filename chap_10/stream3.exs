IO.puts File.stream!("words") |> Enum.max_by(&String.length/1)
