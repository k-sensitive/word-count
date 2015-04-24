require('rspec')
require('word_count')

describe('String#word_count') do
  it('returns the number of times a word appears in a one word string') do
    expect("a".word_count("a")).to(eq(1))
  end

  it('returns the number of times a word appears in a string') do
    expect("a".word_count("a is a letter")).to(eq(2))
  end

  it('handles all uppercase entries in word and string input') do
    expect("THY".word_count("THY is thy")).to(eq(2))
  end

  it('handles mix case entries') do
    expect("ThY".word_count("tHy is thy")).to(eq(2))
  end
end
