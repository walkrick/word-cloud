require_relative '../names_and_bs'

class WordCloud
  def sum_words

    word_count = Hash.new(0)
    NAMES_AND_BS.each_value do |val|
      val.each do |str|
        str.split(" ").each do |word|
          word_count[word] += 1
        end
      end
      word_count
    end

    h = {}
    word_count.each_pair do |word, wcount|
      if h[wcount].nil?
        h[wcount] = [word]
      else
        h[wcount] << word
      end
    end

    h.each_key.sort.each do |key|
      p "#{key} #{h[key].join(', ')}"
    end

  end

  def list_people
    NAMES_AND_BS.each do |key|
      p key
    end
  end
end

WordCloud.new.sum_words

