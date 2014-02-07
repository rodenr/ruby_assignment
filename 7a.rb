class Dessert

	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	#def name; @name; end
	attr_accessor :name

	def calories; @calories; end

	def healthy?
		if self.calories < 200
			true
		else
			false
		end
	end

	def delicious?
		true	
	end

end

iceCream = Dessert.new('Ice Cream', 100)

puts "I'm eating #{iceCream.name}"
iceCream.name = "space ice cream"
puts "I'm eating #{iceCream.name}"

puts iceCream.healthy?
puts iceCream.delicious?
