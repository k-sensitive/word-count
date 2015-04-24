class String
  define_method(:word_count) do |phrase|
    count = 0
    word_list = phrase.split("")
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
