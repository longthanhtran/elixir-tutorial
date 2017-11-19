# always use paretheses around function parameters in pipelines
(1..10) |> Enum.map(&(&1*&1)) |> Enum.filter(&(&1 < 40))