def glob_match(array, pattern)
	result = []
	array.each do |x|
		result << x unless !(File.fnmatch?(pattern, x, File::FNM_DOTMATCH))
	end
	p result
end

array = ["part1.rb","part2.rb","part2.rb~","part3.rb.un~"]
glob_match(array, "part*rb?*")
