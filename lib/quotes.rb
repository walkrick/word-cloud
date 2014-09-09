require "rubygems"
require "json"


file = File.open("/Users/RickWalker/gSchoolWork/word-cloud/data/quotes.json", "r")
content = file.read


data = JSON.parse(content.downcase)
data.map do |key, value|
  result = Hash.new(0)
value.each { |word| result[word] += 1 }
 puts result
end


# counts = Hash.new(0)
#
# content.each { |content| result[content] += 1 }
# return counts


# result = Hash.new(0)
# words.each { |word| result[word] += 1 }
# return result