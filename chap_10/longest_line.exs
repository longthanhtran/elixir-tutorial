IO.puts File.read("words")
|> String.split
|> Enum.max(&String.length/1)
