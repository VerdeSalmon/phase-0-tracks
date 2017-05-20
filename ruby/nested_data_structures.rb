#design and build a nested data structure to represent a real-world construct.

kitchen = [
	"fridge",
	"oven",
	"stove",
	[	{cabinet1: { flatware: [ "knives", "forks", "spoons"], pots: "slow cooker", pans: " ",},	

		cabinet2: ["napkins", "tin foil"]},

		["cabinet3", "cabinet4", "cabinet5"]
	]
]

p kitchen

puts "How many pans do you have?"
kitchen[3][0][:cabinet1][:pans] = gets.chomp


puts "Do you want to add any element inside of a cabinet? (Type cabinet1, cabinet2)"
add_place = gets.chomp.to_sym

puts "Which element do you will like to add at #{add_place}?"
add_element = gets.chomp


if kitchen[3][0].key? add_place

	if add_place == :cabinet1
		puts "Do you want save it as a flatware, pots or pans?"
		cabinet1_category = gets.chomp.to_sym

		if cabinet1_category == :flatware
			kitchen[3][0][:cabinet1][:flatware].push add_element

		elsif cabinet1_category == :pots
			pot = kitchen[3][0][:cabinet1][:pots]
			pot2 = pot.ljust(pot.length+2) << add_element
			kitchen[3][0][:cabinet1][:pots] = pot2.split("  ")
		
		elsif cabinet1_category == :pans
			pan = kitchen[3][0][:cabinet1][:pans]
			pan2 = pan.ljust(pan.length+2) << add_element
			kitchen[3][0][:cabinet1][:pans] = pan2.split("  ")
		end
	
	elsif add_place == :cabinet2
		kitchen[3][0][:cabinet2].push add_element

	else 
		puts "Wrong answer, try agin"

	end
end


kitchen[3][1].delete_at(1)

p kitchen 