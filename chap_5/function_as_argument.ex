times_2 = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end
apply.(times_2, 6)

list = [1, 3, 5, 7, 9]
Enum.map list, fn el -> el * 2 end
