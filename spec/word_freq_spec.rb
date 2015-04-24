require('rspec')
require('word_freq')

describe('String#word_freq') do
  it('will return 1 if the word the method is called on is the same as the word given as the argument') do
    expect('path'.word_freq('path')).to(eq(1))
  end
  it('will return 0 if the word the method is called on is not the same as the word given as the argument') do
    expect('path'.word_freq('street')).to(eq(0))
  end
  it('will return 1 if the word occurs once at the beginning of the sentence') do
    expect('hello'.word_freq('Hello world')).to(eq(1))
  end
  it('will return 1 if the word occurs once anywhere in the sentence') do
    expect('hello'.word_freq('World hello I am Ian')).to(eq(1))
  end
  it('will return the number of occurences of the word the method is called on within the sentence') do
    expect('path'.word_freq('Little red riding hood walked down the path and on that path she met me')).to(eq(2))
  end
  it('will return the number of occurences of the word the method is called on  a sentence containing punctuation') do
    expect('path'.word_freq('Little red riding hood walked down the path, on that path she met a ...')).to(eq(2))
  end
  it('will return 0 occurences of the word if the method is called on a sentence containing punctuation and not the word') do
    expect('path'.word_freq('Little red riding hood walked down the path, on that path she met a ...')).to(eq(2))
  end
end
