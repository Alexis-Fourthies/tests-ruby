def translate(word)
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(word[0])
    word + 'ay'
  elsif consonants.include?(word[0]) && consonants.include?(word[1])
    word[2..-1] + word[0..1] + 'ay'
  elsif consonants.include?(word[0])
    word[1..-1] + word[0] + 'ay'
  else
    word 
  end
end

def translate (phrase)
  vowels = %w{a e i o u}
  phrase.gsub(/(\A|\s)\w+/) do |word|
          word.strip!
      while not vowels.include? word[0] or (word[0] == 'u' and word[-1] == 'q')
          word += word[0]
          word = word[1..-1]
      end
      word  = ' ' + word + 'ay'
  end.strip
end
