# Learn To Program - Chris Pine - Ch.1 exercises

# The author is 1,160,000,000 seconds old, how old is this in years?

# First, lets find out how many seconds are in a year.
seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24
days_in_year = 365

seconds_in_year = seconds_in_minute * minutes_in_hour * hours_in_day * days_in_year

puts "There are #{seconds_in_year} seconds in a year."

# Next, we can divide the authors age in seconds by the seconds in a year and that should give us his age.
authors_age_in_seconds = 1_160_000_000
authors_age_in_years = authors_age_in_seconds / seconds_in_year

puts "The author was #{authors_age_in_years} years old at the time of publication."