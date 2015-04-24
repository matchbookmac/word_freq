require('pry')

class String
  define_method(:word_freq) do |sentence|
    search_word = self.downcase()
    if(search_word.gsub(/[^a-z0-9\s]/, '*').include?('*'))
      downcase_sentence = sentence.downcase().split(/ /)
      downcase_sentence.map!() do |word|
        word = word.gsub(/[^a-z0-9\s]/, '*').split(//).reverse()
        if(word[0].eql?('*'))
          word.shift()
        end
        word = word.reverse().join()
      end
    else
      downcase_sentence = sentence.downcase().gsub(/[^a-z0-9\s]/, ' ').split(/ /)
    end
    word_count = 0
    downcase_sentence.each() do |word|
      if(search_word.gsub(/[^a-z0-9\s]/, '*').include?('*'))
        if(search_word.gsub(/[^a-z0-9\s]/, '*').eql?(word))
          word_count += 1
        end
      elsif(search_word.eql?(word))
        word_count += 1
      end
    end
    word_count
  end
end
