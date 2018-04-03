# Learn To Program - Chris Pine - Ch.8 exercises

# Build and Sort an Array: Write a program that let's the user type as many words as they want until the type 'enter' on a blank line, then have the program print the words in alphabetical order. Make sure to test that hitting 'enter' always exits the program, whether on the first line, second line, etc...

# Prompt the user for input
puts 'Please type one word at a time, followed by the [enter] key.'
puts 'When you are done, press [enter] on a blank line and the words you typed'
puts 'will be printed in alphabetical order.'

user_input = ''
user_words = []

# Store the words in lowercase so sort function will not get confused by capital letters
user_input = gets.chomp.downcase

# Loop until the user doesn't enter anything
while user_input != ''
  user_words.push(user_input)
  user_input = gets.chomp.downcase
end

# Put the user's words in alphabetical order
user_words.sort!

puts 'Here are the words you typed in alphabetical order:'
# Print the words to the screen
puts user_words.join(', ')