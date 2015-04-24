require('rspec')
require('word_freq')

describe('String#word_freq') do
  it('will return 1 if the word the method is called on is the same as the word given as the argument') do
    expect('path'.word_freq('path')).to(eq(1))
  end
  it('will return 0 if the word the method is called on is not the same as the word given as the argument') do
    expect('path'.word_freq('street')).to(eq(0))
  end
  # it('will return true if the word the method is called on is the same as the word given as the argument that is capitalized') do
  #   expect('path'.word_freq('Path')).to(eq(true))
  # end
end
