# Learn To Program - Chris Pine - Ch.7 examples

# **************** 7.1: Comparison Methods ************************* #

# We can use <, >, <=, >=, ==, and != to compare the equality of objects.

puts 5 > 7  # => false
puts 5 < 7  # => true
puts 5 == 7 # => false
puts 5 != 7 # => true

# Ruby can compare strings with the above methods too, it uses lexicographical ordering, which means it compares them based on the order they appear in the dictionary.

puts 'cat' < 'dog' # => true

# There is a catch to lexicographical comparisons though, as computers order capital letters before lowercase ones. To mitigate this, make sure when you are comparing two strings they are of the same case.

puts 'cat' < 'Zebra'                    # => false
puts 'cat'.downcase < 'Zebra'.downcase  # => true
puts 'cat'.upcase < 'Zebra'.upcase      # => true

# When comparing strings of numbers, lexicographical ordering still applies since they are strings, so make sure to convert them to integers if you need to do a numerical comparison.

puts 2 < 10               # => true
puts '2' < '10'           # => false
puts '2'.to_i < '10'.to_i # => true

# It's important to note that all comparisons return the special objects true and false, not a string 'true' and 'false'. These objects are used heavily to determine how branching statements will run.

# ************************* 7.2: Branching ****************************** #

# A simple demonstration of branching, if the user's name is 'Daniel', the message will print, if not, nothing will print.

puts 'What is your name?'
name = gets.chomp

if name == 'Daniel'
  puts name + ' is a lovely name!'
end

# If we want a program to do one thing if a condition is true and another if it is false, we use the if...else construct. The following program will say 'There are great things in your future!' if the user's name is 'Daniel' and will blow them off otherwise.

puts 'What is your name?'
name = gets.chomp

if name == 'Daniel'
  puts 'I see great things in your future!'
else
  puts 'I see...Oh look at the time I must be leaving!'
end

# You can nest branches within branches like the following program shows:

puts 'Please state your name:'
name = gets.chomp

if name == name.capitalize
  puts 'Nice to meet you ' + name + '.'
else
  puts 'Shouldn\'t you\'re name be ' + name.capitalize + '?'
  reply = gets.chomp
  if reply.downcase == 'yes'
    puts 'Well, that\'s better!'
  else
    puts 'Get out! You are too dumb for this lesson!'
  end
end

# ************************* 7.3: Looping ****************************** #

# Looping allows us to repeat something while a certain condition is true. Here is a simple 'while' loop, the program will keep saying "What's up?" until the user types 'bye':

user_response = ''
while user_response.downcase != 'bye'
  puts "What's up?"
  user_response = gets.chomp
end
puts 'Ceeya l8er!'

# There are ways to break out of a loop as well, using the 'break' statement after some conditional test. The following program will infinitely loop (while true causes this) and pester the user until the user types 'Bye'.

while true
  puts "What's up doc?"
  user_response = gets.chomp
  if user_response.downcase == 'bye'
    break
  end
  puts user_response
end
puts 'l8er brosiedon'

# ********************* 7.4: A Little Bit of Logic ************************ #

# What if we want to display the same message if two conditions are true? Using if, and else, that would look this way:

puts 'What is your name?'
name = gets.chomp

if name == 'Daniel'
  puts "That's a nice name!"
else
  if name == 'Ella'
    puts "That's a nice name!"
  end
end

# The above program works, but it seems strange to have to nest the second 'if' statement. With elsif, we can accomplish the same thing with no nesting:

puts 'What is your name?'
name = gets.chomp

if name == 'Daniel'
  puts "That's a nice name!"
elsif name == 'Ella'
  puts "That's a nice name!"
end

# While the above program is a definite improvement over the first, we are violating the DRY (Don't repeat yourself) principle by having repetition in what happens in each condition. What we are really trying to say is: if the name is Daniel or Ella, then print "That's a nice name!". Using the || (or) operator, we can do just that!

puts 'What is your name?'
name = gets.chomp

if name == 'Daniel' || name == 'Ella'
  puts "That's a nice name!"
end

# || is one logical operator, the others are && and !. Here is how they work.

i_am_daniel = true
i_like_beer = true
i_am_lamp = false
i_like_radishes = false

# Testing ||
puts i_am_daniel || i_like_beer      # => true
puts i_am_daniel || i_am_lamp        # => true
puts i_like_radishes || i_like_beer  # => true
puts i_am_lamp || i_like_radishes    # => false

# Testing &&

puts i_am_daniel && i_like_beer      # => true
puts i_am_daniel && i_am_lamp        # => false
puts i_like_radishes && i_like_beer  # => false
puts i_am_lamp && i_like_radishes    # => false

# Testing !
puts !i_am_daniel     # => false
puts !i_like_radishes # => true


