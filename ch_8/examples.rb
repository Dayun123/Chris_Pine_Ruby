# Learn To Program - Chris Pine - Ch.8 examples

# If you want to store multiple objects, you need some sort of data structure that is a list, and arrays are perfect for this purpose.

[]                              # => Empty array
[5]                             # => Array holding one element
flavor = 'vanilla'
['dog', 4, flavor, [true, 2.0]] # => array with 4 elements, one of which is an array

# Each element in an array can be accessed by it's index number, and the numbering starts at 0.

names = ['Daniel', 'Ella', 'Buddy', 'Benji']

puts names[0] # => Daniel
puts names[2] # => Buddy
puts names[4] # => nil

# Since there are only 4 elements in the array, the last element we can get a meaningful value from is names[3]. When we looked at names[4], we got nothing back, and that is because in Ruby nil represents nothing, so if you 'puts' nothing you get nothing!

# You can assign and re-assign elements to the array by accessing the index you want to assign to:

names = []
names[0] = 'Phil'
names[2] = 'Dan'
names[3] = 'Ryan'

puts names[0] # => Phil
puts names[1] # => '' (nil)
puts names[2] # => Dan
puts names[3] # => Ryan
puts names[4] # => '' (nil)

# As we see above, if you don't assign anything to a slot in an array (such as in names[1]) it is just nil.

# ********************* 8.1: The Method 'each' ************************* #

# The 'each' method allows us to do something to *each* member of an array:

languages = ['French', 'Spanish', 'English']

languages.each do |language|
  puts 'I really like ' + language + ', don\'t you?'
end

# The code above is like saying "Loop through the languages array and assign each object to the variable language and then do whatever is between the do...end block." This is similar to the while loop we saw earier, except 'each' is a method, and the 'while' loop is a part of the Ruby language. Methods like 'each' that are like loops are called iterators.

# Iterators don't have to just work on arrays, here is an iterator that works on number objects:

3.times do
  puts "Hip Hip Hooray!"
end

# ******************** 8.2: More Array Methods **************************** #

# There are array methods that turn the array into a string such as to_s and join:

names = ['Bob', 'Eric', 'John']

puts names.to_s       # => ["Bob", "Eric", "John"]
puts names.join(', ') # => Bob, Eric, John

# From the code above, it's clear that calling .to_s on an array gives the string representation of the array, while calling join actually turns the elements of the array into a string separated by whatever parameter you pass to .join.

# The methods .push and .pop add and remove an element from the end of the array respectively, while the .last method returns the last element of the array but leaves the array unchanged.

favorite_things = ['Shrimp', 'Beer', 'Bacon']

puts favorite_things.last         # => Bacon
puts favorite_things.pop          # => Bacon
puts favorite_things.last         # => Beer
favorite_things.push('Ice Cream')
puts favorite_things.last         # => Ice Cream
