class String
  define_method(:word_freq) do |sentence|
    word = self.downcase()
    downcase_sentence = sentence.downcase()
    word.eql?(downcase_sentence)
  end
end
