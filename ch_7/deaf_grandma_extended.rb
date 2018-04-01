# Learn To Program - Chris Pine - Ch.7 exercises

# Deaf Grandma Extended: Write a program where whenever you speak to Grandma she responds with "Huh? Speak up Sonny!" unless you shout it (type in all caps) in which case she says "NO, NOT SINCE [1930-1950]", where [1930-1950] is a random date chosen between that range. The only way you can stop talking to grandma is to shout 'BYE'.

# In this extended version, Grandma won't let you leave unless you shout 'BYE' three times in a row.

num_bye = 0
current_turn = 0
bye_turn = 0

while num_bye < 3

  puts 'Say something to Grandma:'
  user_response = gets.chomp

  if user_response == 'BYE'
    # If the loop we are on occured just after a loop where we said bye, increase the num_bye counter.
    if current_turn == bye_turn + 1
      bye_turn = bye_turn + 1
      num_bye = num_bye + 1
    else
      # We must not have said bye last turn, but we did this time, so set bye_turn and reset num_bye to 1
      bye_turn = current_turn
      num_bye = 1
    end
  end

  if user_response == user_response.upcase
    date = rand(21) + 1930
    puts 'No, not since ' + date.to_s + '!'
  else
    puts 'HUH? SPEAK UP SONNY!'
  end

  current_turn = current_turn + 1

  puts "\n\n"

end