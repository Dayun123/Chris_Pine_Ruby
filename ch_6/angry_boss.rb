# Learn To Program - Chris Pine - Ch.6 exercises

# Angry Boss: Write a program that rudely asks you what you want and then yells back at you your answer and fires you. Ex:

# Boss: 'What do you want?'
# User: 'I want a raise.'
# Boss: 'WHATTAYA MEAN YOU WANT A RAISE!?! YOU'RE FIRED!!!'

puts 'What do you want?'
user_answer = gets.chomp

puts 'Whattaya mean you want "'.upcase + user_answer.upcase + '"!?! You\'re fired!!!'.upcase

