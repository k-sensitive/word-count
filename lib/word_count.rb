class String
  define_method(:word_count) do |phrase|
    count = 0
    hold_char = []
    punctuation = ",.?!;:"
    self.downcase!()
    characters = phrase.downcase.split("")  # separate characters
    characters.each() do |a_char|
      if punctuation.include?(a_char)
        #if a_char is a punctuation, ignore it
      else
        hold_char.push(a_char)
      end
    end
    hold_phrase = hold_char.join("")   # contains phrase minus punctuations
    word_list = hold_phrase.split(" ")
    word_list.each() do |word|
      if word.eql?(self)
        count += 1
      else
        # count does not increment
      end
    end
    count
  end
end
