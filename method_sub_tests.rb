@board = [	["X", "O", "O"],
						["X", "X", "O"],
						["O", "O", "X"]	 ]


#want to take the first element in the first row 
#second element in the second row 
#and third element in the third row and make a new array 

#want to take the third element in the firts row
#the second element in the second row 
#and the first element in the third row and make a new array

@left_to_right_diagonal = []
@right_to_left_diagonal = []

def diagonals 
	count = 0 

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
end

def same_element?(array)
  if array.count("X") == array.length || array.count("O") == array.length #most recent change
    true 
  else 
    false
  end 
end


puts
puts @left_to_right_diagonal.inspect
puts @right_to_left_diagonal.inspect
puts
diagonals
puts @left_to_right_diagonal.inspect
puts @right_to_left_diagonal.inspect
puts 
puts same_element?(@left_to_right_diagonal)
puts same_element?(@right_to_left_diagonal)

  
 # @board.each do |row|
 #  	if same_element?(row, row[0]) 
	#  	  puts true
	#  	else
	#  		puts false 
	#  end
 # end

 # @board.transpose.each do |row|
 #  	if same_element?(row, row[0])
	#  	  puts true
	#  	else 
	#  		puts false
	#  	end 
	# end
 
	

# puts same_element?(["O", "O", "O"], "O")
# puts same_element?(["O", "X", "O"], "X")




# @arr = (1..20).to_a

# def win
#   if @arr.length == 5
#   	true
#   end 
# end 

# until win 

# 	@arr.pop

  

# end 

# puts @arr.inspect


# @player1 = true
# @player2 = false

# def turn_switch 
# 	@player1 = !@player1
# 	@player2 = !@player2
# end 

# puts
# puts @player1
# puts !@player1
# puts
# puts @player2
# puts !@player2
# puts



# 10.times do
# 	puts @player1
# 	puts @player2
# 	puts
# 	turn_switch
# end 

# 10.times do 
# 	puts "\t\tPlayer #{@player1 = true ? 1 : 2}, make your move."
# 	turn_switch
# end 