def count_words string
	res = Hash.new(0)

	string.downcase.scan(/\w+/).map{|word| res[word] = string.downcase.scan(/\b#{word}\b/).size}

	return res
end

puts count_words "A man, a plan, a canal -- Panama"

puts count_words "Doo bee doo bee doo"
