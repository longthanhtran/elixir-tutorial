defmodule MultipleProcesses do
  def run(token_1, token_2) do
    pid1 = spawn(MultipleProcesses, :reply, [])
    pid2 = spawn(MultipleProcesses, :reply, [])

    send pid1, { self(), token_1 }
    send pid2, { self(), token_2 }

    receive do
      ^token_2 -> IO.puts "Got reply: #{token_2}"
    end
    receive do
      ^token_1 -> IO.puts "Got reply: #{token_1}"
    end
  end

  def reply do
    receive do
      { sender, token } -> send sender, token
    end
  end
end