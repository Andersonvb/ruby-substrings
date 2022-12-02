def count_word(str, word)
  str.scan(/(?=#{word})/).count
end

def substrings(str, dictionary)
  substrings = Hash.new
  dictionary.each do |word|
    if count_word(str, word) > 0
      substrings[word] = count_word(str, word)
    end
  end
  return substrings
end

dictionary = ["up", "down", "left", "right"]
puts substrings("up down left right", dictionary)