# # Learn To Program - Chris Pine - Ch.3 examples

# ----------- 3.1: String Arithmetic -----------

# For concating strings use a '+' operator, leave a space in one string if neccessary!
hello_kitty_no_space = 'Hello' + 'kitty'
hello_kitty = 'Hello ' + 'kitty'

puts "Without adding space \n#{hello_kitty_no_space}"
puts "With correct spacing\n#{hello_kitty}"

# OK, so you can add strings together (concatenation), but in Ruby you can also multiply a string by an integer.
batting_eyes = 'blink ' * 4

puts "If I were to bat my eyes it would look like ' #{batting_eyes}'"

# ------------ 3.2: 12 vs. '12' --------------

# There is a difference between numbers and digits. 12 is a number but '12' is a string of two digits.
puts 12 + 12     # => 24
puts '12' + '12' # => '1212'
puts '12 + 12'   # => '12 + 12'

# Multiplication examples between numbers and digits
puts 2 * 5   #=> 10
puts '2' * 5 #=> '22222'
puts '2 * 5' #=> '2 * 5'

# ------------- 3.3 Problems -----------------

# You can't mix and match numbers and digits any way you please, the following examples won't work.
puts '2' + 5 # => can't implicitly convert the integer 5 into a string
puts '2' * '5' # => can't implicitly convert the string '5' into an integer

# If you use single quotes for your strings, you must escape any single quotes that occur in the string with a \
puts 'You're swell' # => won't work!
puts 'You\re swell' #=> will work!

