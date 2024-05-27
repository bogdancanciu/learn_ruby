class Book
    attr_accessor :title
  
    def title=(new_title)
      @title = new_title.split.map.with_index do |word, index|
        lowercase_words = ["a", "an", "and", "the", "in", "of"]
        
        if index == 0 || !lowercase_words.include?(word)
          word.capitalize
        else
          word
        end
      end.join(" ")
    end
  end
  