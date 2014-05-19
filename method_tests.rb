#win has to go inside play?
@user_inputs = (1..9).to_a 

@player1 = true 
@player2 = false 

@board = [	[" ", " ", " "],
						[" ", " ", " "],
						[" ", " ", " "]	 ]

input_counter = 0 

def prompt 
	print "\t\t> "

end

def user_input_to_board(input)
	#translate input 1-9 to a place in 
	#the array/space on the board 
	if @player1
		@board.flatten![input-1] = "X"
	else
		@board.flatten![input-1] = "O"
	end 

	@board = @board.each_slice(3).to_a

end 

def turn_switch 
	@player1 = !@player1
	@player2 = !@player2
end 

while input_counter < 9 
	puts 
	puts "\t\tInput please:"
	prompt 
	input = gets.chomp.to_i 
	input_counter += 1 
	user_input_to_board(input)
	puts
	puts @board.inspect 
  turn_switch
end 




# def user_inputs_remove(input) #add back to main program 
#   @user_inputs.delete(input)
# end 

# def play 
#   win = false 
# 	input_counter = 0 
# 		if input_counter >= 6 
# 			win = true 
# 		end 

# 	until win	 
# 	  puts "\t\tPlayer #{@player1 ? 1 : 2}, make your move."
# 	  prompt
# 	  input = gets.chomp.to_i
# 	  input_counter += 1 

	  
# 	  if valid_move?(input)
# 	  	# push move to the board array
# 	  	#user_input_to_board(input) # updating (and redrawing?) the board happens here 
# 	  	puts
# 	  	puts "\t\tThis move will update the board"
# 	  	puts "\t\tand change player turns."
# 	  	puts
# 	  	user_inputs_remove(input)
# 	  	#draw_board
# 	  	turn_switch
# 	  elsif occupied?(input)
# 	  	puts
# 	  	puts "\t\tSeat's taken!"
# 	  	puts
# 	  else 
# 	  	puts
# 	  	puts "\t\tNot a valid move."
# 	  	puts
# 	  end 
# 	end #until  

# 	if win 
# 		puts
# 		puts "Player {@player1 ? 1 : 2} wins!"
# 		puts
# 	else 
# 		puts
# 		puts "It's a draw."
# 		puts
# 	end 
# end #play


# def occupied?(input)
# 	#this will require comparing 
# 	#the incoming input 
# 	#to values already on the board
# 	#array.flatten.include? 

# 	#could also do by eliminating 
# 	#numbers from input array 
# 	#once they are chosen 
# 	if ((input >= 1 && input <= 9) && (!@user_inputs.include? input))
# 		true 
# 	else 
# 		false 
#   end 
  
# end

# def valid_move?(input)
# 	if ((input >= 1 && input <=9) && !occupied?(input))
# 		true
# 	else 
# 		false
# 	end 
# end 



# play

