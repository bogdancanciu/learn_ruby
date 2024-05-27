$SPECIAL_CASES = %w{qu sch}

def translate(sentence)
    result = []
    vowels = %w{a e i o u}

    sentence.split.each do |word|
        while !vowels.include?(word[0])
            if is_special_case?(word)
                word = chomp_special_case(word)
            else
                consonant = word[0]
                word.slice!(0)
    
                word << consonant
            end
        end
        result.push(word << "ay")
    end

    result.join(' ')
end

def is_special_case?(word)
    if (word.length >= 2 && $SPECIAL_CASES.include?(word[0..1])) || (word.length >= 3 && $SPECIAL_CASES.include?(word[0..2]))
        return true
    else
        return false
    end
end

def chomp_special_case(word)
    if (word.length >= 2 && $SPECIAL_CASES.include?(word[0..1]))
        word.slice!(0,2)
        word << $SPECIAL_CASES[0]
    else
        word.slice!(0,3)
        word << $SPECIAL_CASES[1]
    end

    word
end