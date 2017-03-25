defmodule Monitor3 do
  import :timer, only: [ sleep: 1 ]

  def sad_function(sender) do
    send sender, message: "This is child, you are expecting an exception, Master"
    raise RuntimeError, "A designed exception from child process"
  end

  def run do
    res = spawn_monitor(Monitor3, :sad_function, [self()])
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

Monitor3.run
