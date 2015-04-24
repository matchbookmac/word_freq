class String
  define_method(:word_freq) do |sentence|
    word = self.downcase()
    downcase_sentence = sentence.downcase().split(/ /)
    word_count = 0
    if(word.eql?(downcase_sentence[0]))
      word_count += 1
    end
    word_count
  end
end
