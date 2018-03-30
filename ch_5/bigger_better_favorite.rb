# Learn To Program - Chris Pine - Ch.5 exercises

# This program asks for the users favorite number, adds one to that number, and suggests that the new incremented number is the better number.

# ask for the users number
puts "What is your favorite number?"
fav_num = gets.chomp.to_i # convert it to an integer since gets will have it as a string

# increment the users number by 1
bigger_num = fav_num + 1

# tell the user that bigger_num is better than their number because it is bigger.
puts "#{bigger_num} is a better number than #{fav_num} because it is larger!"
