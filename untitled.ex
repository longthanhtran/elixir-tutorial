defmodule AServer do
  use GenServer

  def start_link(start_value) do
    GenServer.start_link(__MODULE__, start_value, name: __MODULE__)
  end

  def stop_it do
    GenServer.stop(__MODULE__)
  end
end


  def terminate(_reason, _state) do
    IO.puts "Goodbye"
  end