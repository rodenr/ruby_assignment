class Dessert

	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def name; @name; end

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

class JellyBean < Dessert

	def initialize(name, calories, flavor)
		@name = name
		@calories = calories
		@flavor = flavor
	end

	def name; @name; end

	def calories; @calories; end

	def flavor; @flavor; end

	def delicious?
		if self.flavor.downcase == "black licorice"
			false
		else
			true
		end
	end

end

jb = JellyBean.new('jellybean', 100, "anything")
puts jb.delicious?
