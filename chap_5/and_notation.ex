add_one = &(&1 + 1)
add_one.(44) # 45

# list or tuple can be come function
divrem = &{ div(&1, &2), rem(&1, &2) }
divrem.(13, 5) # {2, 3}

Enum.map [1,2,3,4], &(&1+2)

Enum.each [1,2,3,4], &IO.inspect(&1)
