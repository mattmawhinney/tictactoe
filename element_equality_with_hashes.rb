def same_element?(array)
  
  #initializing a new hash in this way 
  #allows for the values of the same key 
  #to be incremeneted 
  count_hash = Hash.new(0)
  array.each {|element| count_hash[element] += 1} 
  
  #if any of the keys have a value equal to the length 
  #of the original array 
  #then all the elements in the array are the same  

  count_hash.each_key do |key|
  	if count_hash[key] == array.length 
  		return true
  	else 
  		return false
  	end 
	  #to be more specfic to the tictac toe problem  this
	  #could be rewritten as 
	  #if count_hash["X"] == 3 || count_hash["O"] == 3
	  #  true
	  #else 
	  #  false 
	  #end
  end #count_hash.each_key 
end #same_element?
