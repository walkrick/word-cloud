require 'json'

class WordCloud

  def list_people(input)
    names_bs = JSON.parse(input)
    names_bs.keys
  end

  def sum_words(input)
    names_bs = JSON.parse(input)
    word_count = Hash.new(0)

    names_bs.each_value do |val|
      val.each do |str|
        str.split(" ").each do |word|
          word_count[word] += 1
        end
      end
    end
    bs_word_sum = Hash.new { |hash, key| hash[key] = [] }
    word_count.each do |word, count|
      bs_word_sum[count] << word
    end
    bs_word_sum
  end

  def words_names(input)
    words_who = Hash.new { |hash, key| hash[key] = [] }
    names_bs = JSON.parse(input)
    names_bs.each do |name, bs|
      bs.each do |str|
        str.split(" ").each do |word|
          words_who[word] << name unless words_who[word].include?(name)
        end
      end
    end
    words_who
  end
end
