# Learn To Program - Chris Pine - Ch.7 exercises

# 99 Bottles of Beer: Write a program that prints the lyrics to "99 Bottles of Beer on the Wall"

num_bottles = 99

while true
  puts num_bottles.to_s + ' bottles of beer on the wall,'
  puts num_bottles.to_s + ' bottles of beer.'
  puts 'You take one down, pass it around,'
  num_bottles = num_bottles - 1
  if num_bottles > 1
    puts num_bottles.to_s + ' bottles of beer on the wall.'
  else
    puts num_bottles.to_s + ' bottle of beer on the wall.'
    break
  end
  puts "\n\n\n"
end