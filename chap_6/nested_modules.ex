# modules are defined at the top level
# nested modules just a way elixir arranges Outer.Inner to link them

defmodule Outer do
  defmodule Inner do
    def inner_func, do: "inner func"
  end

  def outer_func, do: Inner.inner_func
end