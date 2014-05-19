def clear
	puts "\e[H\e[2J\n"
	puts
	puts
	puts
end

clear
#print "\t\t|\n\t\t|\n\t\t|\n\t\t|\n\t\t|" + "\t\t\t\t|\n\t\t\t\t|\n\t\t\t\t|\n\t\t\t\t|\n\t\t\t\t|"

def draw_vertical 
	4.times do 
	  puts "\t\t\t\t\t|\t\t|"
	end 
end

def draw_horizontal 
	puts "\t\t\t\b\b\b" + "-" * (18 * 3)
end 

draw_vertical
draw_horizontal
draw_vertical
draw_horizontal
draw_vertical
puts
puts
puts
puts

#{}\n\t\t|\n\t\t\t|\n\t\t|\n\t\t\t|\n\t\t|\n\t\t\t|\n\t\t|\n\t\t\t|"
