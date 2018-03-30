# Learn To Program - Chris Pine - Ch.6 examples

# Methods perform actions on a given object. puts, gets, chomp, to_i, to_f, and to_s are all obviously methods, but the arithmetic operators +, -, * and / are also methods.

puts 5.+ 5
puts 'hello'.+ ' world'

# So, every method acts on an object, but what do puts and gets act on then?

puts self # => main, the default object in Ruby

# *********************** 6.1: Fancy String Methods ******************** #

# There are a lot of methods that work on strings. reverse will reverse the string it is called on, but only for that call, the original string is not reversed after the call to reverse.

var1 = 'stop'
var2 = 'deliver repaid desserts'

puts var1.reverse # => pots
puts var2.reverse # => stressed diaper reviled
puts var1         # => stop
puts var2         # => deliver repaid desserts

# .length is another useful string method, it tells you the number of characters in a string.

# puts 'What is your full name?'
# name = gets.chomp
# puts 'There are ' + name.length + ' letters in your name.'

# => Whoops! name.length returns an integer, we need to convert it to a string in order to concat it in the string.

puts 'What is your full name?'
name = gets.chomp
puts 'There are ' + name.length.to_s + ' letters in your name.'

# Daniel Joseph Schroeder, there are 21 letters in my name, but this says there are 23, because it is counting the space characters as well. Lets write a program that gets the actual number of letters in my name by getting my first, middle, and last name individually then adding up the lengths of each. See full_name_length.rb for the program

# There are a number of string methods that change the case of the letters in the string in different ways.

string = 'HeLlO wOrLd'
puts string.upcase      # => 'HELLO WORLD'
puts string.downcase    # => 'hello world'
puts string.swapcase    # => 'hElLo WoRlD'
puts string.capitalize  # => 'Hello world'
puts ' a'.capitalize    # => ' a', only capitializes the first character, not the first letter!
puts string             # => 'HeLlO wOrLd'

# There are also string methods that handle visual formatting. .center is one such method, that adds space on the left and right sides of the string.

amount_padding = 50
puts 'Roses are red'.center(amount_padding)
puts 'Violets are green'.center(amount_padding)
puts 'This may be the worst poem I\'ve ever seen'.center(amount_padding)

# .ljust and .rjust pad the string with spaces on the right and left sides, respectively.

amount_padding = 25
line = '<--line-->'
puts line.ljust(amount_padding)
puts line.rjust(amount_padding)
puts line.center(amount_padding)

# ************************* 6.4: More Arithmetic ************************* #

# In addition to +, -, *, and /, we also have the exponientiation operator, **, and the modulus operator, %.

puts 5**2   # => 25
puts 4**0.5 # => 2.0, when used with a number less than one, ** is the same as taking the root
puts 7 / 3  # => 2, integer division yields an integer result, rounded down.
puts 7 % 3  # => 1, modulus gives the remainder after division

# .abs returns the absolute value of the number

puts (2 - 5).abs # => 3
puts (5 - 2).abs # => 3

# ********************** 6.5: Random Numbers *************************** #

# Ruby comes with a random number generator, rand, that when called with no arguments gives you number between 0 and 1 exclusive, and when called with a number such as rand(n), gives you a number between 0 and n-1.

puts rand
puts rand(1)    # => always returns 0, because gives you an integer between 0 and 1 - 1 (0)
puts rand(101)  # => correct way to get a number between 0-100, because 0 and 101-1 range is 0-100.

# rand can return the same seemingly random numbers on each run, if you seed it with the same number each time with a call to srand.

srand 2000
puts rand(23) # => 22
puts rand(45) # => 8
puts rand(74) # => 54
puts
srand 2000
puts rand(23) # => 22
puts rand(45) # => 8
puts rand(74) # => 54


