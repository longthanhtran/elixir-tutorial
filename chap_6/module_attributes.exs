defmodule Example do
  @author "Dave Thomas"

  def get_author do
    @author # not allow to set attribute in function level
  end
end

defmodule Example do
  @attr "one"
  def first, do: @attr
  @attr "two"
  def second, do: @attr
end