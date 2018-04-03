# Learn To Program - Chris Pine - Ch.9 exercises

# Improved Ask Program: Improve upon the 'ask' method from the chapter by removing the answer variable.

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    else
      puts "You must answer yes or no!"
    end
  end
end

ask 'Do you like tacos?'
ask 'Do you like pizza?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like hamburgers?'

puts wets_bed