defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %{}, details: "", severity: 1
end

report = %BugReport{ owner: %Customer{ name: "Dave", company: "Pragmatic" }, details: "broken" }

IO.puts report.owner.company

report = %BugReport{ report | owner: %Customer{ report.owner | company: "PragProg" } }

# shortcut
put_in(report.owner.company, "PragProg")
put_in(report[:owner][:company], "PragProg")

# This allows 'apply a function to a value in structure'
update_in(report.owner.name, &("Mr. " <> &1))
update_in(report[:owner][:name], &("Mr. " <> &1))
