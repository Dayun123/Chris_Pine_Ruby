# Learn To Program - Chris Pine - Ch.9 examples

# Loops and iterators allow us to the same thing a number of times in a row, but what if we wanted to perform a similar action but at different points in a program? We would need to write our own methods to perform the action:

def say_moo
  puts 'Moo...'
end

# Once you have defined a method, you have to actually tell it to run, which we do below:

say_moo
say_moo
puts 'Meow'
say_moo

# All methods are associated with objects, and our say_moo method is no different, it is just associated with the main object of the program like puts and gets are.

# *********************** 9.1: Method Parameters ************************* #

# Some methods can just be called on objects (.to_s, .reverse, etc..), while others take parameters (.puts(param)). Let's add a parameter to 'say_moo' that tells the method how many times to print the 'moo' to the screen:

def say_moo(number_of_moos)
  number_of_moos.times do
    puts 'Moo...'
  end
  # Could also define the method this way...
  # puts "Moo..." * number_of_moos
end

say_moo 3
puts 'Meow...'
# say_moo # => This will result in an error, since we required the parameter 'number_of_moos' in order to call the say_moo method.

# *********************** 9.2: Local Variables ************************** #

# Variables that are created inside of a method are local variables an cannot be used outside of the method they are defined in:

def double_me(number)
  number_doubled = number * 2
  # I'm just going to start using string interpolation, getting tired of concating all the time!
  puts "Your number: #{number} becomes #{number_doubled} when doubled."
end

double_me 8
# puts "I can't get to #{number_doubled} or #{number} outside of the method call!" # => Causes an error, because number_doubled and number are local to the method double_me, and can't be accessed outside of that method.

# Methods only have access to their local variables, they can't modify variables that are global to the program:

global_var = "I'm the global var!"

def reset_me(global_var)
  global_var = nil
  puts "I reset your variable!"
end

puts global_var     # => I'm the global var!
reset_me global_var # => I reset your variable!
puts global_var     # => I'm the global var!

# Notice how in the program above, even though we passed global_var into the reset_me method, and the variable is named the same in the global scope and in the method scope, the variable is unchanged outside of the method.

# ********************** 9.3: Experiment (Duby) ************************** #

# Let's imagine a language like Ruby, but where all variables are in the same scope. We'll call it Duby, for Dumb Ruby. What would happen if we ran the following program?

def square(x)
  x = x * x
end

x = 10
puts x          # => 10
my_num = x / 2
square my_num
puts x          # => 25

# We can see from the above program that if all variables were in the same scope, the variable x will be 25 at the end of the program, even though we assigned it to the number 10 at the beginning and never changed it in the main program. Since variables are all in the same scope in Duby, the x in the square method will affect the x in the main program. Madness!

# ************************* 9.4: Return Values **************************** #

# Some methods return a value while others just output to the screen:

return_val = 8 + 3
puts "return_val: #{return_val}"  # => 11
return_val = 6 / 2
puts "return_val: #{return_val}"  # => 3
return_val = puts "Hello world!"
puts "return_val: #{return_val}"  # => '' (nil)

# Here we can see that the arithmetic methods return the value of the expression, where as 'puts' returns nil. Every method has to return something, even if it is just nil.

# What does our say_moo method return?

def say_moo
  puts "Moo..."
end

return_val = say_moo
puts "return_val: #{return_val}"  # => '' (nil)

# It returns nil, and this is because if there is no explicit return statement then a method returns the result of the last expression evaluated. If we wanted say_moo to return some value, we would need to call a 'return' as the last expression with that value or simply but the value as the last line of the method.

def say_moo
  puts "Moo..."
  return "I'm explicitly returned!"
end

return_val = say_moo
puts "return_val: #{return_val}"  # => I'm explicitly returned!

def say_moo
  puts "Moo..."
  "I'm implicitly returned!"
end

return_val = say_moo
puts "return_val: #{return_val}"  # => I'm implicitly returned!

# It's important to remember that a method returns the *last evaluated expression* and not the last line in the method. Here is a method with explicit returns showing how this works:

def say_hi(name)
  if name.downcase == 'daniel'
    return 'Good to see you master!'
  elsif name.downcase == 'ella'
    return 'Your royal pugness, how may I be of service?'
  end
  'Hi, random person!'
end

return_val = say_hi 'Daniel'
puts "return_val: #{return_val}"  # => Good to see you master!
return_val = say_hi 'Ella'
puts "return_val: #{return_val}"  # => Your royal pugness, how may I be of service?
return_val = say_hi 'Benji'
puts "return_val: #{return_val}"  # => Hi, random person!

# Here is a program that utilizes return values and the writing of our own method to aid in a phsyc class survey:

def ask(question)
  while true
    puts question
    answer = gets.chomp.downcase
    if (answer == 'yes' || answer == 'no')
      if answer == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer yes or no!'
    end
  end
end

# We don't care about these questions
ask 'Do you like Mexican food?'
ask 'Do you like Pizza?'
ask 'Do you like Tacos?'
# We do care about this question
important_answer = ask 'Do you wet the bed?'
ask 'Do you like ice cream?'
# And keep asking...
# Debrief
puts "This survey wasn't about food at all, we just wanted to see"
puts "if you wet the bed, and you answered: "

if important_answer
  puts "Yes, I wet the bed."
else
  puts "No, I don't wet the bed."
end