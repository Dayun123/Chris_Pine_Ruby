# Learn To Program - Chris Pine - Ch.2 exercises

# How many hours are in a year?
hours_in_day = 24
days_in_year = 365

hours_in_year = hours_in_day * days_in_year

puts "There are #{hours_in_year} hours in a year."

# How many minutes are in a decade?
minutes_in_hour = 60
years_in_decade = 10

minutes_in_decade = minutes_in_hour * hours_in_day * days_in_year * years_in_decade

puts "There are #{minutes_in_decade} minutes in a decade."

# How many seconds old are you?
current_age_in_years = 32
seconds_in_minute = 60

age_in_seconds = seconds_in_minute * minutes_in_hour * hours_in_day * days_in_year * current_age_in_years

puts "I'm 32 years old, which means I'm #{age_in_seconds} seconds old!"