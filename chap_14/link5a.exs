defmodule Link5a do
  import :timer, only: [ sleep: 1 ]

  def sad_function(sender) do
    send sender, "Hey, I'm child process"
    raise RuntimeError, message: "Something went wrong"
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_monitor(Link5a, :sad_function, [self()])
    sleep 500
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

Link5a.run
