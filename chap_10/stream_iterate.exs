Stream.iterate(0, &(&1+1))
  |> Enum.take(5)
  |> IO.inspect
