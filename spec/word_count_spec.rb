require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns the number of times a word appears in a one word string') do
    expect("a".word_count("a")).to(eq(1))
  end

  it('returns the number of times a word appears in a phrase') do
    expect("a".word_count("a is a letter")).to(eq(2))
  end
end
