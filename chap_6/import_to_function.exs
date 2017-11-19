defmodule Example do
  def func1 do
    List.flatten([1, [2, 3], 4])
  end

  def func2 do
    import List, only: [flatten: 1] # import Module [, only:|except: ]
    flatten [5, [6, 7], 8]
  end
end