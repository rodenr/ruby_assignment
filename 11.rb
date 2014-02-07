class CartesianProduct
	
	include Enumerable
	
	def initialize(a, b)
		@a = a
		@b = b 
	end

	def each
		return 'nooooope' unless block_given?
		@a.each do |x|
			@b.each do |y|
				yield [x,y]
			end
		end
	end

end

c = CartesianProduct.new([:a,:b],[4,5])

c.each do |elt|
	puts elt.inspect
end
