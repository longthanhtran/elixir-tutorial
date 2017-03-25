defmodule Link4 do
  import :timer, only: [ sleep: 1 ]

  def sad_function(sender) do
    send sender, "Hey, I'm child process"
    exit(:boom)
  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Link4, :sad_function, [self()])
    sleep 500
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
        IO.puts "Nothing happened as far as I am concerned"
    end
  end
end

Link4.run
