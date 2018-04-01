# Learn To Program - Chris Pine - Ch.7 exercises

# Leap Years: Write a program that asks for the starting year and ending year and the 'puts' all the years in between them, including the starting and ending year if those are leap years.

# First, let's figure out how to calculate leap years.

# I will store the calculated leap years in this array
leap_years = []

# This string represents all the leap years between 1582 and 2018, as calculated from this website: https://www.miniwebtool.com/leap-years-list/?start_year=1582&end_year=2018
leap_year_string = '1584, 1588, 1592, 1596, 1600, 1604, 1608, 1612, 1616, 1620, 1624, 1628, 1632, 1636, 1640, 1644, 1648, 1652, 1656, 1660, 1664, 1668, 1672, 1676, 1680, 1684, 1688, 1692, 1696, 1704, 1708, 1712, 1716, 1720, 1724, 1728, 1732, 1736, 1740, 1744, 1748, 1752, 1756, 1760, 1764, 1768, 1772, 1776, 1780, 1784, 1788, 1792, 1796, 1804, 1808, 1812, 1816, 1820, 1824, 1828, 1832, 1836, 1840, 1844, 1848, 1852, 1856, 1860, 1864, 1868, 1872, 1876, 1880, 1884, 1888, 1892, 1896, 1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936, 1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980, 1984, 1988, 1992, 1996, 2000, 2004, 2008, 2012, 2016'

# Set the year to the earliest year we are calculating from
year = 1582

# stop calculating at 2018
while year < 2018

  # There are two main conditions that must be satisfied for a year to be a leap year.

  # Either it is divisible by 4 but NOT divisible by 100:
  # (year % 4 == 0) && (year % 100 != 0)

  # OR

  # It's divisible by both 100 and 400:
  # (year % 100 == 0) && (year % 400 == 0)
  if ((year % 4 == 0) && (year % 100 != 0)) || ((year % 100 == 0) && (year % 400 == 0))
    # If the year satisfies the condition, it gets added to the leap year array.
    leap_years.push(year)
  end

  year = year + 1

end

# If we create a comma separated string using join(', ') of the array of leap years we calculated and it matches the string of leap years from the website, this works!
if leap_years.join(', ') == leap_year_string
  puts "Successfully calculating leap years!\n\n\n"
end

# Now that we know how to calculate leap years, let's ask the user for a range of years (it doesn't have to fit the range above, that was just the range the website would calculate from.)

puts "Welcome to the leap year calculator, where you can see all the leap years that lie within a given start date and end date.\n\n"

puts "Enter the start year:"
start_year = gets.chomp.to_i

puts "Enter the end year:"
end_year = gets.chomp.to_i

# Let's add some error checking, since I typed 1800 for the start year and 200 for the end year on accident but the program still ran!

while end_year < start_year
  puts "\n\nOops, you seem to have given and end year of " + end_year.to_s + " which is actually BEFORE the starting year you gave of " + start_year.to_s + ".\n"
  puts "Please enter the starting year, and make it BEFORE the ending year!"
  start_year = gets.chomp.to_i

  puts "Please enter the ending year, and make it AFTER the starting year of " + start_year.to_s + "."
  end_year = gets.chomp.to_i
end

# Create a list to hold the leap years
leap_year_list = []

# Make the current_year being tested the start_year at the beggining of the loop
current_year = start_year

# Loop while the current year is no greater than the end_year
while current_year <= end_year

  if ((current_year % 4 == 0) && (current_year % 100 != 0)) || ((current_year % 100 == 0) && (current_year % 400 == 0))
    leap_year_list.push(current_year)
  end

  current_year = current_year + 1
end

puts "\nThese dates are all leap years between " + start_year.to_s + " and " + end_year.to_s + ":\n"

puts leap_year_list.join(', ')
