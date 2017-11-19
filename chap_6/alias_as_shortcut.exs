defmodule Example do
  def compile_and_go(source) do
    alias My.Other.Module.Parser, as: Parser
    alias My.Other.Module.Runner, as: Runner

    # Can use last part for 'as'
    # alias My.Other.Module.Parser
    # alias My.Other.Module.Runner
    #
    # can group same module like this
    # alias My.Other.Module.{Parser, Runner}
    source
      |> Parser.parse()
      |> Runner.execute()
  end
end