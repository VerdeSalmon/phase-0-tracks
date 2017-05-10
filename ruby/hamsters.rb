puts "What's the hamster's name?"
hamstername = gets.chomp.capitalize

puts "What's the volume of hamster between 1 & 10?"
hamstervol = gets.chomp.to_i
 
puts "What's the hamster's fur color?"
hamstercolor = gets.chomp

puts "Is the hamster worth adopting? (y or n)"
hamsteradopt = gets.chomp 
hamsteradopt == "y"?  hamsteradopt ="worth" : hamsteradopt ="not worth"

puts "What's the hamster's estimated age?"
hamsterestage = gets.chomp.to_i
hamsterestage ||= nil


puts "The Hamster's name is #{hamstername}!,\nthe volume is #{hamstervol},\nthe fur color is a beautiful #{hamstercolor},\nthe estimated age is #{hamsterestage}\nand the hamster is #{hamsteradopt} adopting."


#pair with @sanjaynelson
