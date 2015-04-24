require('pry')

class String
  define_method(:word_freq) do |sentence|
    search_word = self.downcase()
    downcase_sentence = sentence.downcase().gsub(/[^a-z0-9\s]/, ' ').split(/ /)
    word_count = 0
    downcase_sentence.each() do |word|
      if(search_word.eql?(word))
        word_count += 1
      end
    end
    word_count
  end
end
