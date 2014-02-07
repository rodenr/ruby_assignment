class Class
	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s # make sure it's a string
		attr_reader attr_name
		attr_reader attr_name+"_history"
		class_eval %Q{
			def #{attr_name}=(attr_name)
				@attr_name = attr_name
				if @#{attr_name}_history then
					@#{attr_name}_history << attr_name
				else
					@#{attr_name}_history = Array.new
					@#{attr_name}_history << nil
					@#{attr_name}_history << attr_name
				end
			end
		}
	end
end

class Foo
	attr_accessor_with_history :bar
end

f = Foo.new
f.bar=1
f.bar=300
puts f.bar_history.to_s
#f.bar = 1
