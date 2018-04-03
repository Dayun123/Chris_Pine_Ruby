# Learn To Program - Chris Pine - Ch.9 examples

# Old School Roman Numerals (Silly version): Write a program that when passed an integer between 1 and 3000 prints the Old School Roman Numeral representation. In Old School Roman Numerals, 9 is denoted VIIII not IX.

# Reference:

# I = 1   V = 5    X = 10    L = 50     C = 100    D = 500    M = 1000

# Strategy: I noticed that the integer representations of the roman numerals follow a pattern of reducing by a half then a fifth from highest to lowest, so I wanted to use that fact to re-write the Old School Roman Numerals program to only have an array of the symbols for the roman numerals and use that as the iterator. Then, I can just look at the first digit of the master roman_numeral variable and if it is a 1, I reduce that variable by half, if it is a 5, I reduce it by a fifth. This way, each loop, the integer representation of the roman numeral follows the symbolic representation, but we don't have to keep them together in an array like I did in the other program, only the symbols have to reside in the array.

# If the integer representation of the roman_numeral starts with a 1, reduce it by half, otherwise, reduce it by a fifth
def reduce_roman_numeral(roman_numeral)
  if roman_numeral.to_s.start_with? '1'
    roman_numeral /= 2
  else
    roman_numeral /= 5
  end
end

# The largest integer representation of the roman numerals we are looking for
roman_numeral = 1000

# The symbols for the roman numerals ordered largest to smallest
rn_symbols = ['M','D','C','L','X','V','I']

rn_string = ''

puts "Enter a number between 1 and 3000"
number = gets.to_i

rn_symbols.each do |symbol|
  if (quotient = number / roman_numeral) > 0
    quotient.times do
      rn_string += symbol
    end
    number = number % roman_numeral
  end
  roman_numeral = reduce_roman_numeral roman_numeral
end

puts "Roman numeral is: #{rn_string}"