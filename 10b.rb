module Enumerable
	def palindrome?
		p self.collect{|x| x} == self.collect{|x| x}.reverse
	end
end

[1,2,3,2,1].palindrome?

var = [1,2,3,4,5]
var.palindrome?

var = ["this","can","be","can","this"]
var.palindrome?
