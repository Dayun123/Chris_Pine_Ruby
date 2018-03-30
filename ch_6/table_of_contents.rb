# Learn To Program - Chris Pine - Ch.6 exercises

# Write a program using ljust, rjust, and center that displays a table of contents like so:

#                          Table of Contents
#
#   Chapter 1: Geting Started                     page 1
#   Chapter 2: First Program                      page 9

heading = 'Table of Contents'
chapter_1_title = 'Chapter 1: Getting Started'
chapter_2_title = 'Chapter 2: First Program'
chapter_3_title = 'Chapter 3: Syntax'
chapter_4_title = 'Chapter 4: Control Flow and Operators'
chapter_1_page_num = 'page 1'
chapter_2_page_num = 'page 9'
chapter_3_page_num = 'page 24'
chapter_4_page_num = 'page 50'

center_padding = 65
justify_padding = 25

first_title_length = chapter_1_title.length
first_page_num_length = chapter_1_page_num.length

puts "\n\n\n"
puts heading.center(center_padding)
puts
puts chapter_1_title + chapter_1_page_num.rjust(justify_padding)

# Calculate the difference between the lengths of the first chapters title and the next chapters title, and add this to the justify_padding for the next title so everything lines up.
diff_padding = (first_title_length - chapter_2_title.length)

# As the page numbers grow, you will have to account for the difference in sizes of the page num string, so calculate the difference in size between the first chapters page num and this chapters page num.
diff_page_num_padding = (first_page_num_length - chapter_2_page_num.length)

# The total padding will be the sum of the original justify padding, the diff_padding between the first title's length and this chapters length, and the diff padding between the first titles page num length and this titles page num length
total_padding = justify_padding + diff_padding + diff_page_num_padding

puts chapter_2_title + chapter_2_page_num.rjust(total_padding)

diff_padding = (first_title_length - chapter_3_title.length)
diff_page_num_padding = (first_page_num_length - chapter_3_page_num.length).abs
total_padding = justify_padding + diff_padding + diff_page_num_padding

puts chapter_3_title + chapter_3_page_num.rjust(total_padding)

diff_padding = (first_title_length - chapter_4_title.length)
diff_page_num_padding = (first_page_num_length - chapter_4_page_num.length).abs
total_padding = justify_padding + diff_padding + diff_page_num_padding

puts chapter_4_title + chapter_4_page_num.rjust(total_padding)
