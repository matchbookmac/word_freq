require('rspec')
require('word_freq')

describe('String#word_freq') do
  it('will return true if the word the method is called on is the same as the word given as the argument') do
    expect('path'.word_freq('path')).to(eq(true))
  end
end
