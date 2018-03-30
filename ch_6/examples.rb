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


