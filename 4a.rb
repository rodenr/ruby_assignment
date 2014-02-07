class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 

def rps_game_winner(game)

	raise WrongNumberOfPlayersError unless game.length == 2
	if game[0][1].downcase == "r"
		if game[1][1].downcase == "p"
			game[1][0] + " wins with " + game[1][1]
	    	elsif game[1][1].downcase == "r" or game[1][1].downcase == "s"
			game[0][0] + " wins with " + game[0][1]
		else
			raise NoSuchStrategyError
		end
	
	elsif game[0][1].downcase == "p"
		if game[1][1].downcase == "s"
			game[1][0] + " wins with " + game[1][1]
	    	elsif game[1][1].downcase == "p" or game[1][1].downcase == "r"
			game[0][0] + " wins with " + game[0][1]
		else
			raise NoSuchStrategyError
		end

	elsif game[0][1].downcase == "s"
		if game[1][1].downcase == "r"
			game[1][0] + " wins with " + game[1][1]
	    	elsif game[1][1].downcase == "s" or game[1][1].downcase == "p"
			game[0][0] + " wins with " + game[0][0]
		else
			raise NoSuchStrategyError
		end
	else
		raise NoSuchStrategyError
	end

	    
end

puts rps_game_winner [["Armando", "R"],["Dave", "p"]]
puts rps_game_winner [["Armando", "R"],["Dave", "s"]]
puts rps_game_winner [["Armando", "q"],["Dave", "p"],["Bruno"]]
