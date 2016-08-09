IO.puts File.open("words")
        |> IO.stream(:line)
        |> Enum.max(&String.length/1)
