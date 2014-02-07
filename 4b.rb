class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 
# clean up this method, implement DRYness, then complete
def rps_game_winner(game)

	raise WrongNumberOfPlayersError unless game.length % 2 == 0
	name1 = game[0]
	name2 = game[1]

	if game[0][1].downcase == "r"
		if game[1][1].downcase == "p"
			#puts name2 + " beats " + name1
			game[1]
	    	elsif game[1][1].downcase == "r" or game[1][1].downcase == "s"
			#puts name1 + " beats " + name2
			game[0]
		else
			raise NoSuchStrategyError
		end
	
	elsif game[0][1].downcase == "p"
		if game[1][1].downcase == "s"
			#puts name2 + " beats " name1
			game[1]
	    	elsif game[1][1].downcase == "p" or game[1][1].downcase == "r"
			#puts name1 + " beats " + name2
			game[0]
		else
			raise NoSuchStrategyError
		end

	elsif game[0][1].downcase == "s"
		if game[1][1].downcase == "r"
			#puts name2 + " beats " name1
			game[1]
	    	elsif game[1][1].downcase == "s" or game[1][1].downcase == "p"
			#puts name1 + " beats " + name2
			game[0]
		else
			raise NoSuchStrategyError
		end
	else
		raise NoSuchStrategyError
	end
end


# takes nested arrays, recurses until array of array of strings.
# This means that level is a game, have two elements input play
# each other and return the winner.  winner is stored in arr.
def rps_tournament_winner(input ,arr)
	if input[0][0].class == Array
		input.each do |sublevel| rps_tournament_winner(sublevel, arr) end
	else
		winner = rps_game_winner([input[0],input[1]])
		puts winner.class
		puts winner[0].class
		arr << winner
	end

end


bracket = [

	    [

		            [ ["Armando", "P"], ["Dave", "S"] ],

			            [ ["Richard", "R"],  ["Michael", "S"] ],

				        ],

					    [

						            [ ["Allen", "S"], ["Omer", "P"] ],

							            [ ["David E.", "R"], ["Richard X.", "P"] ]

								        ]

]

arr = Array.new

# Loop until last player (winner of tournament) is matched up against
# nil 
while bracket[0][1].is_a? Array
		
	rps_tournament_winner(bracket, arr)
	# delete last round of tournament by resetting bracket
	bracket = Array.new
	if arr[0].is_a? Array
		# take every paired even and odd element and
		# put them in their own array within bracket,
		# This creates new game for next iteration
		(0..arr.length-1).step(2).each do |player|
			puts player
	       		bracket << [ arr[player], arr[player+1] ]
			print "#{bracket} \n"
		end
	end

	arr = Array.new

end

# I could not fully determine how nested the winner is in arrays,
# so just flatten and the first two elements is what I want.
bracket = bracket.flatten
puts "...And the winner of the tournament is..."
puts bracket[0] + " with the move " + bracket[1]

