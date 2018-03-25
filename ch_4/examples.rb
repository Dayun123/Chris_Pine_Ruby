# Learn To Program - Chris Pine - Ch.4 examples

# Without using variables, if we wanted to print a string twice, we would have to type (or copy/paste) the entire string twice
puts '...you can say that again..'
puts '...you can say that again...'

# This violates the DRY principles that Ruby (and Rails) strives to achieve. It's better to store something in a variable if you are going to use it more than once. The example below has the same result as the example above but uses variables to print the strings.
my_string = '...you can say that again...'
puts my_string
puts my_string

# Another example, with concatenation
long_name = 'Anna Maria Christina Vicki Barcelona'
puts long_name + ' is a really long name!'

# Variables can be assigned and reassigned as many times as you wish
composer = 'Mozart'
puts composer + ' was da bomb.com in his day.'

composer = 'Beethoven'
puts 'Also, ' + composer + ' wasn\'t bad either'

composer = 'Brahms'
puts 'For my taste, ' + composer + ' was the best of the three!'

# Variables point to a value, not to another variable. You can assign the value of a variable to another variable, but the variables will not be influenced by any changes made to one another, they keep there own value.
var_1 = 'foo'
var_2 = 'bar'

puts var_1 # => 'foo'
puts var_2 # => 'bar'

var_1 = var_2

puts var_1 # => 'bar'

var_2 = 'baz'

puts var_1 # => 'bar', unchanged because it doesn't point to var_2, just the value var_2 was when the assignment occured.
