class Numeric
	@@currencies={'yen'=>0.013, 'euro'=>1.292, 'rupee'=>0.019, 'dollar'=>1}
	

	def method_missing(method_id)

		singular_currency = method_id.to_s.gsub(/s$/,'')

		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		else
			super
		end
	end

	def in(currency)
	#	raise 'Param needs to be symbol' unless currency.kind_of? Symbol

		singular_currency = currency.to_s.gsub(/s$/, '')

		self / @@currencies[singular_currency]
	end

end


p 5.yen.in(:dollar).in(:yen)
p 5.yen.in(:dollars)
p 0.065.dollars.in(:yen)
p 1.dollar.in(:rupees)
p 10.rupees.in(:euro)
