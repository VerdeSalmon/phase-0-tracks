client_information = {
	client_name: "",
	age: "",
	number_of_children: "",
	pets: "",
	decor_theme: "",
	city: "",
	design_area: "",
}


puts "Client Name: "
client_information[:client_name] = gets.chomp

puts "Age: "
client_information[:age] = gets.chomp.to_i

puts "Number of Children: "
client_information[:number_of_children]= gets.chomp.to_i

puts "Any Pets? (y/n)"
client_information[:pets] = gets.chomp
if client_information[:pets] == "y" 
	client_information[:pets] = true
end

puts "Decor Theme: "
client_information[:decor_theme] = gets.chomp

puts "City"
client_information[:city] = gets.chomp

puts "the area to design is Interior? (y/n)"
client_information[:design_area] = gets.chomp
if client_information[:design_area] == "y" 
	client_information[:design_area] = true
end


puts client_information


