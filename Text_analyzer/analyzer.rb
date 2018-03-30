# load file and count lines
lines = File.readlines("sample_text.txt")
line_count = lines.size
text = lines.join
puts "#{line_count} lines"

# find total character length with a .length method

total_characters = text.length
puts "#{total_characters} characters"

# get character total without whitespaces

total_characters_nospaces = text.gsub(/\s+/, "").length
puts "#{total_characters_nospaces} characters excluding whitespaces"

# return word count using .split which defaults to returning words separated by whitespaces
word_count = text.split.length
puts "#{word_count} words"

# same can be applied to .split ing for paragraphs etc
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
