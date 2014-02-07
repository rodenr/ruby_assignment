def palindrome? string
	phrase = string.downcase.scan(/\w/)
	phrase == phrase.reverse
end

puts palindrome? "A man, a plan, a canal -- Panama"
puts palindrome? "Madam, I'm Adam!"
puts palindrome? "Abracadabra"

