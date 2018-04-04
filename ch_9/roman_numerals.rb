# Learn To Program - Chris Pine - Ch.9 exercises

# Modern Roman Numerals:

# Reference:

# I = 1   V = 5    X = 10    L = 50     C = 100    D = 500    M = 1000

puts "Enter a number from 1-3000:"
number = gets.chomp

# Cut the number up into it's individual digits and reverse so that the 'ones' place is the first member of the array: "1234" becomes ['4', '3', '2', '1']
digits = number.split('').reverse

# start with the 1's place
current_pos = 1

# roman numeral index
rn_index = 0

roman_numerals = ['I', 'V', 'X', 'L', 'C', 'D', 'M']

rn_string = ''

# Loop through each digit of the number, starting from the 1's place, and build up the rn_string
digits.each do |digit|

  # convert the digit from string to int and multiply by the current place value (1, 10, 100, 1000)
  digit = digit.to_i * current_pos

  # intermediate_pos holds all of the RN's that start with '5' (V, L, D)
  intermediate_pos = current_pos * 5
  # next_pos is the next RN that starts with '1' (X, C, M)
  next_pos = intermediate_pos * 2

  # current pos = 1
  # next pos = 5
  # next next pos = 10

  # For example, if the digit is 3, then current_pos is 1 and next_pos is 5, so this would say : if 3 < (5 - 1), which it is, so we would add 'III' to the rn_string
  if digit < (intermediate_pos - current_pos)
    digit.times do
      rn_string += roman_numerals[rn_index]
    end
  # This is for the digits that lie one below the '5's places, so if the digit was 4, intermediate_pos would be 5, current_pos would be 1, so the statement would be:
  # elsif 4 == (5 - 1), which would be true
  elsif digit == (intermediate_pos - current_pos)
    rn_string += roman_numerals[rn_index + 1] + roman_numerals[rn_index]
  # This handles all digits that are between the 5's and the next position, so if the digit were less than 10, this would handle 6-8.
  # Ex: digit = 7, intermediate_pos = 5, next_pos = 10
  # elsif (7 > 5) && (7 < (10 - 1)), which is true
  elsif (digit > intermediate_pos) && (digit < (next_pos -  current_pos))
    cut_digit = digit % intermediate_pos
    cut_digit.times do
      rn_string += roman_numerals[rn_index]
    end
    rn_string += roman_numerals[rn_index + 1]
  # The final condition will run if all the others fail, which means this number is one less than the next_pos, so its something like 9, 40-49, 90-99
  else
    rn_string += roman_numerals[rn_index + 2] + roman_numerals[rn_index]
  end

  # We are handling the roman_numerals in pairs each loop:
  # I-V, X-L, C-D, M
  # So we can increase the starting index for the roman numerals by two each loop
  rn_index += 2
  current_pos = next_pos

end

# We built the string up in reverse order, so we need to reverse the string in order to display it.
puts rn_string.reverse
