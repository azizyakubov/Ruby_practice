# load file and count lines
lines = File.readlines(ARGV[0])
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

# create a list/array of stop words
stop_words = %w{the a by on for of are with just but and to the my I has some in}
words = text.scan(/\w+/)
# find ratio of useful words
key_words = words.select { |word| stop_words.include?(word) }
ratio_useful = ((key_words.length.to_f/ words.length.to_f)*100).to_i
puts "Percentage of useful Words : #{ratio_useful}%"
