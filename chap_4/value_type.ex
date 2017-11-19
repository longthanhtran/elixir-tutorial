# Integers

an_int = 1234
a_hex = 0xcafe
an_oct = 0o765
a_bin = 0b1010

a_long_decimal = 1_000_000

# Floating point

a_float = 1.0
a_float_with_e = 0.314159e1

# Atom uses name as its value
:fred
:is_binary?
:"long john silver"

# Ranges
0..10

# Regular expressions
a_regex = ~r{[aeiou]}g
Regex.run a_regex, "caterpilla" # ["a"]
Regex.scan a_regex, "caterpilla" # [["a"], ["e"], ["i"], ["a"]]
Regex.split a_regex, "caterpilla" # ["c", "t", "rp", "ll", "r"]
Regex.replace a_regex, "caterpilla", "*" # "c*t*rp**ll*r"
