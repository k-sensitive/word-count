class String
  define_method(:word_count) do |phrase|
    count = 0
    self.downcase!()
    word_list = phrase.downcase.split(" ")
    word_list.each() do |word|
      if self.eql?(word)
        count += 1
      else
        # count does not increment
      end
    end
    count
  end
end
