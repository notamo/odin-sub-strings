def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |acc, word|
    count = string.downcase.scan(word).size
    acc[word] = count if count > 0
    acc
  end
end

dictionary = [
  "below", "down", "go", "going", "horn", "how", "howdy",
  "it", "i", "low", "own", "part", "partner", "sit"
]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
