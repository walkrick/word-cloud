require './lib/word_cloud'

data = File.read('./data/names_bs.json')

word_cloud = WordCloud.new

p word_cloud.list_people(data)
p word_cloud.sum_words(data)
p word_cloud.words_names(data)
