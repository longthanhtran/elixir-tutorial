defmodule MyList do
  def caesar(list, n), do: _caesar(list, n)

  defp _caesar([], _n), do: []
  defp _caesar([ head | tail ], n)
  when head + n < ?z do
    [ head + n | _caesar(tail, n) ]
  end

  defp _caesar( [ head | tail ], n ) do
    [ head + n - 26 | _caesar(tail, n) ]
  end
end
