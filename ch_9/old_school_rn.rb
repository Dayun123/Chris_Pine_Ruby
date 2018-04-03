# Learn To Program - Chris Pine - Ch.9 examples

# Old School Roman Numerals: Write a program that when passed an integer between 1 and 3000 prints the Old School Roman Numeral representation. In Old School Roman Numerals, 9 is denoted VIIII not IX.

# Reference:

# I = 1   V = 5    X = 10    L = 50     C = 100    D = 500    M = 1000



# Better Strategy: Get the user's number, loop through an array of roman numerals values and their symbolic representation, cutting the user's number down each time and printing the correct symbols.

# Take the number and divide it by each roman numeral, starting with the largest. If there is a quotient, store the symbolic representation of the roman numeral 'quotient' times into a string, then reduce the number by taking the modulo of the number and the roman numeral. Repeat until the number is 0, and then return the string.
def old_school_rn(number)

  # For storing the string to print the roman numerals out after the .each iterator. Could also just print the string as you go.
  rn_string = ''

  roman_numerals = [
    [1000, 'M'],
    [500, 'D'],
    [100, 'C'],
    [50, 'L'],
    [10, 'X'],
    [5, 'V'],
    [1, 'I']
  ]

  roman_numerals.each do |roman_numeral|

    # If there is a positive quotient from the users number and the current roman numeral
    if (quotient = number / roman_numeral[0]) > 0
      # Print the symbol for the roman numeral 'quotient' times.
      quotient.times do
        # Store the roman numeral as a string, and print after the loop
        rn_string += roman_numeral[1]
        # Could also just print the string as you go...
        # print roman_numeral[1]
      end
      # Get the remainder and store as number for the next loop, if there is ones
      number = number % roman_numeral[0]
    end

    # Optimize this iterator to stop iterating once user_num hits 0. If the user gives us a number like 3000, we really only have to loop once, so it is silly to keep looping at this point.
    break if number == 0
  end

  # return the string at the end of the method
  rn_string
end

puts "Enter a number between 1 and 3000 to get the Old School Roman Numeral equivalent:"
user_num = gets.to_i

print "#{user_num} in Old School Roman Numerals is: "
puts old_school_rn(user_num).to_s




# Original version of the program, the refactored version above is much DRYer and better!

# Strategy: Get the user's number, then enter a loop and cut the user's number down until you reach the one's place, then exit the loop.

# while user_num > 0
#   if user_num > 1000
#     (user_num / 1000).times do
#       print 'M'
#     end
#     user_num = user_num % 1000
#   elsif user_num > 500
#     (user_num / 500).times do
#       print 'D'
#     end
#     user_num = user_num % 500
#   elsif user_num > 100
#     (user_num / 100).times do
#       print 'C'
#     end
#     user_num = user_num % 100
#   elsif user_num > 50
#     (user_num / 50).times do
#       print 'L'
#     end
#     user_num = user_num % 50
#   elsif user_num > 10
#     (user_num / 10).times do
#       print 'X'
#     end
#     user_num = user_num % 10
#   elsif user_num > 5
#     (user_num / 5).times do
#       print 'V'
#     end
#     user_num = user_num % 5
#   else
#     user_num.times do
#       print 'I'
#     end
#     break
#   end
# end

puts # => to get a newline on the prompt