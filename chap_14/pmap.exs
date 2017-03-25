defmodule Parallel do

  import :timer, only: [ sleep: 1 ]

  def pmap(collection, fun) do
    me = self()
    collection
    |> Enum.map(fn (elem) ->
      spawn_link fn -> (
        :timer.sleep round(:rand.uniform * 50)
        send me, { self(), fun.(elem) })
      end
    end)
    |> Enum.map(fn (pid) ->
      receive do { ^pid, result } -> result end
    end)
  end
end
