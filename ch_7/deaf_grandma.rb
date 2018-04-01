# Learn To Program - Chris Pine - Ch.7 exercises

# Deaf Grandma: Write a program where whenever you speak to Grandma she responds with "Huh? Speak up Sonny!" unless you shout it (type in all caps) in which case she says "NO, NOT SINCE [1930-1950]", where [1930-1950] is a random date chosen between that range. The only way you can stop talking to grandma is to shout 'BYE'

puts 'Say something to Grandma:'
user_response = gets.chomp

while user_response != 'BYE'
  if user_response == user_response.upcase
    date = rand(21) + 1930
    puts 'No, not since ' + date.to_s + '!'
  else
    puts 'HUH? SPEAK UP SONNY!'
  end
  user_response = gets.chomp
end