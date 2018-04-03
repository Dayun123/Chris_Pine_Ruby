# Learn To Program - Chris Pine - Ch.8 exercises

# Table of Contents Revisited: Re-create the Table of Contents program from page 32 but store the Chapter titles and page numbers in an array.

heading = 'Table of Contents'
chapters = [
  ['Chapter 1: Getting Started', 'page 1'],
  ['Chapter 2: First Program', 'page 9'],
  ['Chapter 3: Syntax', 'page 24'],
  ['Chapter 4: Control Flow and Operators', 'page 50']
]

center_padding = 65

puts heading.center(center_padding)

chapters.each do |chapter|
  print chapter[0]
  justify_padding = center_padding - chapter[0].length + chapter[1].length
  puts chapter[1].rjust(justify_padding)
end
