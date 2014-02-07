class String

	def palindrome?

		phrase = self.downcase.scan(/\w/)
		phrase == phrase.reverse
	end
end


p "Racecar".palindrome?
p "foo".palindrome?
