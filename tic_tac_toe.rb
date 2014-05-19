@player1 = true 
@player2 = false 
@board = [	[" ", " ", " "],
						[" ", " ", " "],
						[" ", " ", " "]	 ]
@turn_count = 0 
@user_inputs = (1..9).to_a 



#works
def play 
	clear 
  draw_board
	
	until win	|| draw
		puts
		puts
	  puts "\t\tPlayer #{@player1 ? 1 : 2}, make your move."
	  prompt
	  input = gets.chomp.to_i #can probably change to @input on refactoring
	  
	  if valid_move?(input)
	  	user_inputs_remove(input)
	  	# push move to the board array
	  	user_input_to_board(input)
	  	clear
	  	draw_board 
	  	turn_switch
	  elsif occupied?(input)
	  	puts
	  	puts "\t\tSeat's taken!"
	  	puts
	  else 
	  	puts
	  	puts "\t\tNot a valid move."
	  	puts
	  end 
	end #until  

	if win
	  turn_switch  
		puts
		puts "\t\tPlayer #{@player1 ? 1 : 2} wins!"
		puts
	elsif draw   
		puts
		puts "\t\tIt's a draw."
		puts
	end 
end #play

#works
def draw_board
	row_count = 0 
	space_count = 0 

	@board.each do |row|
	  
	  #how to draw a row
		until space_count > 2
	    
			if space_count == 0 
			  print "\t\t" + row[space_count] + "\s\s|"
	    elsif space_count == 1 
	    	print "\s\s" + row[space_count] + "\s\s|"
	    else
				print "\s\s" + row[space_count] 
			end
	    #increment to the next space 
	    space_count += 1 
		end #until loop

		if row_count == 0 || row_count == 1
			 puts
	     puts "\t\t\b" + "-" * 15
	  end 
		#increment to the next row 
	  row_count += 1 
	  #reset the space number counter to move through 
	  space_count = 0 
	end #@board.each
end #draw_board 


#works 
def win 
	#horizontal
	@board.each do |row| 
	 if same_element?(row) 
	  return true
	 end 
	end

  #vertical
  @board.transpose.each do |row|
  	if same_element?(row) 
	 	 return true
	  end 
	end

	#diagonal
	diagonals
	if same_element?(@left_to_right_diagonal) || same_element?(@right_to_left_diagonal)
    return true
  end 
end #win 

#works 
def same_element?(array)
  if array.count("X") == array.length || array.count("O") == array.length #most recent change
    return true 
  else 
    return false
  end 
end

#works 
def diagonals 
	count = 0 
	@left_to_right_diagonal = []
  @right_to_left_diagonal = []

	@board.each do |row|
	  if count == 0 
	  	@left_to_right_diagonal << row[0]
	  	@right_to_left_diagonal << row[-1]
	  	count += 1
	  elsif count == 1 
	  	@left_to_right_diagonal << row[1]
	  	@right_to_left_diagonal << row[1]
	    count += 1
	   else 
	   	@left_to_right_diagonal << row[-1]
	  	@right_to_left_diagonal << row[0]
	  end 
	end 
end #diagonals



#works
def draw
  if @user_inputs.empty? && !win 
  	true  
  end 
end 

#works
def prompt 
	print "\t\t> "

end

#works
def valid_move?(input)
	if ((input >= 1 && input <=9) && !occupied?(input))
		true
	else 
		false
	end 
end 

#works
def occupied?(input)
	#this will require comparing 
	#the incoming input 
	#to values already on the board
	#array.flatten.include? 

	#could also do by eliminating 
	#numbers from input array 
	#once they are chosen 
	if ((input >= 1 && input <= 9) && (!@user_inputs.include? input))
		true 
	else 
		false 
  end 
  
end

#works
def user_inputs_remove(input)
  @user_inputs.delete(input)
end 

#works
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

#works
def turn_switch 
	@player1 = !@player1
	@player2 = !@player2
end 

#works
def clear
	puts "\e[H\e[2J\n" 
	puts "\t\t\t\t\b\b\b\bTIC | TAC | TOE - FEEL THE THRILL"
	puts
	puts 
	puts
end

play

