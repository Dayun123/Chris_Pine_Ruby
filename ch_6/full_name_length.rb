# Learn To Program - Chris Pine - Ch.6 exercises

# This program will calculate the length of the user's full name.

puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp

full_name_length = first_name.length + middle_name.length + last_name.length

puts 'Your name is ' + full_name_length.to_s + ' letters long!'

# Daniel Joseph Schroeder, 21 letters long, it works!