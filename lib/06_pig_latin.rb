def translate(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    if vowels.include?(word[0])
      word + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'  
    end
  end

def translate(phrase)
  words = phrase.split(' ')
  words.map! { |word| translate(word) }
  words.join(' ')
end

def translate(phoneme)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  if vowels.include?(phoneme[0])
    phoneme + 'ay'
  elsif consonants.include?(phoneme[0]) && consonants.include?(phoneme[1])
    phoneme[2..-1] + phoneme[0..1] + 'ay'
  elsif consonants.include?(phoneme[0])
    phoneme[1..-1] + phoneme[0] + 'ay'
  end
end

def translate(phrase)
    s = phrase.split(" ")
    s.map! do |word|
        if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
            word + "ay"
        else
            word[1..-1] + word[0] + "ay"
        end
    end

    return s.join(" ")
end

puts translate("apple")
puts translate("banana")
puts translate("cherry")
puts translate("eat pie")
puts translate("three")
puts translate("school")
puts translate("quiet")
puts translate("square")
puts translate("the quick brown fox")
