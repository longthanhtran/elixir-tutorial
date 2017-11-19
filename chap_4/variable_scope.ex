# Elixir uses lexically scoped, as function level
# Module defines scope but for the module level, not its function(s)

# with scope, the content inside the block available to with only
content = "Now is the time"
lp =  with {:ok, file}   = File.open("/etc/password"),
           content       = IO.read(file, :all),
           :ok           = File.close(file),
           [_, uid, gid] = Regex.run(~{_lp:.*?:(\d+):(\d+)}, content)
      do
        "Group: #{gid}, User: #{uid}"
      end

IO.puts lp      # Group: 26, User: 26
IO.puts content # Now is the time

# with and pattern matching, use `<-` to avoid exception
with [a|_] <- [1,2,3], do: a

with [a|_] <- nil, do: a

content = "Now is the time"
lp =  with {:ok, file}   = File.open("/etc/password"),
           content       = IO.read(file, :all),
           :ok           = File.close(file),
           [_, uid, gid] <- Regex.run(~{xxx:.*?:(\d+):(\d+)}, content)
      do
        "Group: #{gid}, User: #{uid}"
      end

IO.puts inspect(result) # nil

# with always starts the same first line, or wrap the block within (...)
mean =  with(
          count = Enum.count(values),
          sum = Enum.sum(value)
        do
          sum / count
        end)
