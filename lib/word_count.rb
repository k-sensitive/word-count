class String
  define_method(:word_count) do |phrase|
    count = 0
    if self.eql?(phrase)
      count += 1
    end
  end
end
