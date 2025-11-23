def substrings(string, substring_array)
  substring_array.reduce(Hash.new(0)) do |acc, word|
    offset = 0
    while offset = string.downcase.index(word, offset)
        acc[word] += 1
        offset += 1
    end
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
