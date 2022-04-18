def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num = 2)
  string = string + (" #{string}")*(num-1)
end

def start_of_word(string, num)
  string[0..num-1]
end

def first_word(string)
  string.split(" ")[0]
end

def titleize(string)
  little_words = ["and", "or", "the"]
  string.split(" ").map.with_index do |word, index|
    if little_words.include?(word) && index > 0
      word
    else
      word.capitalize
    end
  end.join(" ")
end
