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


def print_inventory_list(input_inventory_list)

	inventory_list = input_inventory_list.flatten
	puts "Inventory"
	inventory_list.each do |item|
		if item.is_a? Hash # kitchen[3][0][:cabinet1] or :cabinete2
			item.each do |sub_subcategory, item2|
				if item2.is_a? Hash # kitchen[3][0][:cabinet1][:flatware],[:pots] and [:pans]
					item2.each do |sub_sub_subcategory, item3|
						puts "+ #{sub_subcategory}: #{sub_sub_subcategory.to_s}: #{item3}"
					end
				else
					puts "+ #{sub_subcategory.to_s}: #{item2}"
				end
			end
		else
			puts "+ #{item}"
		end
	end
end

print_inventory_list(kitchen)



puts "\nHow many pans do you have?"
kitchen[3][0][:cabinet1][:pans] = gets.chomp

puts "\nDo you want to add any element inside of a cabinet? (To choose a cabinet, please type 'cabinet1' or 'cabinet2')"
add_place = gets.chomp.to_sym

puts "\nWhich element do you will like to add at #{add_place}?"
add_element = gets.chomp


if kitchen[3][0].key? add_place

	if add_place == :cabinet1
		puts "\nDo you want save it as a flatware, pots or pans?"
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


deleted = kitchen[3][1].delete_at(1)

puts "\nUpdated Inventory".upcase
print_inventory_list(kitchen) 
puts "\nCHANGES: #{deleted.capitalize} is been deleted and #{add_element.capitalize} is been added to #{add_place.capitalize}"