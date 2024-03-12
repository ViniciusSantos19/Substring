def substrings(string, dictionary)
  array_string = string.split(' ')

  hash_substrings = Hash.new(0)

  array_string.each do |user_word|
    dictionary.each do |word|
      hash_substrings[word] += 1 if user_word.downcase.include?(word)
    end
  end

  hash_substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dictionary)
