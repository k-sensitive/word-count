class String
  define_method(:word_count) do |phrase|
    count = 0
    letters = []
    punctuation = ',.?!;:()[]{}"'
    downcase!()
    characters = phrase.downcase.split("")  # separate characters
    characters.each() do |a_character|
      if punctuation.include?(a_character)
        # ignore it
      else
        letters.push(a_character)
      end
    end
    hold_phrase = letters.join("")   # phrase minus punctuations
    word_list = hold_phrase.split(" ")
    word_list.each() do |word|
      if word.eql?(self)
        count += 1
      else
        # no count increment
      end
    end
    count
  end
end
