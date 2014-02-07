def combine_anagrams(words)
	words.group_by { |word| word.downcase.chars.sort}.values
end

words = ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']

print combine_anagrams(words).to_s + "\n"
