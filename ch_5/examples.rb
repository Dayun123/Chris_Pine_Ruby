# Learn To Program - Chris Pine - Ch.5 examples

# You can't add numbers and strings together...
var1 = 2
var2 = '5'

#puts var1 + var2 # => TypeError: String can't be coerced into Integer

# ************************ 5.1: Conversions ************************** #

# To get the string version of an object, write .to_s after it
var1 = 2
var2 = '5'

puts var1.to_s + var2 # => '25'

# The method .to_i gives the integer version of an object, and .to_f gives the float version

var1 = 2
var2 = '5'

puts var1 + var2.to_i # => 7
puts '15'.to_f # => 15.0
puts 999.99.to_i # => 999 (rounds down always)
puts '5 is my favorite number'.to_i # => 5 (Recognizes how to convert 5, but not the rest)
puts 'My favorite number is 5'.to_i # => 0 (Dosen't recoginize the first letter as an integer, so just returns 0)

# ************************ 5.2: Another Look at Puts *********************** #

# puts stands for 'put string', so the following are all converted to strings before being displayed by puts

puts 20
puts 20.to_s
puts '20'

# ************************ 5.3: The gets Method ************************** #

# gets stands for 'get string' and will capture anything typed until the 'enter' key is pressed.

puts gets

# ************************ 5.5: The chomp Method ************************** #

# gets will grab all of the characters typed up until and INCLUDING the enter (newline), so the following program will display the 'name' variable with a newline after the name.

puts "What is your name?"
name = gets
puts "#{name} is a nice name! Pleased to meet you #{name}, let's hang soon!"

# Daniel
# is a nice name! Pleased to meet you Daniel
# , let's hang soon!

# In order to remove that trailing newline character from the end of a string captured with gets, you need to use the method 'chomp'.

puts "What is your name?"
name = gets.chomp
puts "#{name} is a nice name! Pleased to meet you #{name}, let's hang soon!"

# => Daniel is a nice name! Pleased to meet you Daniel, let's hang soon!

