defmodule Monitor2 do
  import :timer, only: [ sleep: 1 ]

  def sad_function(sender) do
    send sender, message: "This is child"
    exit(:boom)
  end

  def run do
    res = spawn_monitor(Monitor2, :sad_function, [self()])
    IO.puts inspect res
    sleep 500
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

Monitor2.run
