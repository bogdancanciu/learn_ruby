def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, no_of_times = 2)
    result = word
    (no_of_times-1).times { result += " " << word }

    result
end

def start_of_word(word, number_of_characters)
    word[0, number_of_characters]
end

def first_word(phrase)
    phrase.split.first
end

def titleize(sentence)
    little_words = %w{and over the}
    sentence.capitalize.split.map.with_index do |word, index|
    if index.zero? || !little_words.include?(word.downcase)
      word.capitalize
    else
      word
    end
  end.join(' ')
end