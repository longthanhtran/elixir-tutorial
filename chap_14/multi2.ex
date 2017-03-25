defmodule Multiple do
  @tokens ["fred", "betty"]

  def run do
    Enum.each @tokens, fn token ->
      pid = spawn(__MODULE__, :tokeni, [self()])
      send(pid, token)
      receive do
          response -> IO.puts(inspect(response))
      end
    end
  end

  def tokeni(client) do
    receive do
      token ->
        send(client, token)
    end
  end
end