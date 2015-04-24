class String
  define_method(:word_freq) do |sentence|
    word = self
    word.eql?(sentence)
  end
end
