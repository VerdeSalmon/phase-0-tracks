puts "What's the hamster's name?"
hamster_name = gets.chomp.capitalize

puts "What's the volume of hamster between 1 & 10?"
hamster_volume = gets.chomp.to_i
 
puts "What's the hamster's fur color?"
hamster_color = gets.chomp

puts "Is the hamster worth adopting? (type 'y' or 'n')"
hamster_adopt = gets.chomp.downcase	
	case hamster_adopt
		when "y"
			hamster_adopt ="worth"
		when "n"
			hamster_adopt ="not worth"
		else
			hamster_adopt = "uncertain"
		end 


puts "What's the hamster's estimated age in years? (type just numbers)"
hamster_age = gets.chomp.to_f
	if hamster_age.zero?
		hamster_age = nil.inspect
	end


puts "The Hamster's name is #{hamster_name}!,\nthe volume level is #{hamster_volume},\nthe fur color is a beautiful #{hamster_color},\nthe estimated age is #{hamster_age} years\nand the hamster is #{hamster_adopt} adopting."


#pair with @sanjaynelson
