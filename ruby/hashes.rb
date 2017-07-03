#Create a data structure to store user input in a key/value pair
	#String is the incoming value data type by default in client_information.
client_information = {
	client_name: "",
	# Define categories by value data type.
	integer: {age: "", number_of_children: "",},
	boolean: {pets: "", design_area: "",},
	decor_theme: "",
	city: "",
}

# Create a method to turn user input into boolean output
def is_true?(user_input)
	user_input == "y" 
end

# Create a method to print the client information in a user friendly way
def print_client_data(client_data)
	puts "\nClient Information"
	# Iterate through the data structure
	client_data.each do |field_name, client_input|
		if field_name == :integer || field_name == :boolean
			# Iterate through categories (nested data structure)
			client_input.each {|k,v| puts "+ #{k.to_s.capitalize}: #{v}"}
		else
			puts "+ #{field_name.to_s.capitalize}: #{client_input}"
		end
	end 
end


#------------ DRIVE CODE -------------

#Prompt the user for information.
print "Client Name: "
#Save input in the data structure
client_information[:client_name] = gets.chomp


print "Age: "
#Save input in the nested data structure and change input from string to integer.
client_information[:integer][:age] = gets.chomp.to_i


print "Number of Children: "
client_information[:integer][:number_of_children]= gets.chomp.to_i


print "Any Pets? (y/n): "
#Save input in the nested data structure and call the method to turn user input into boolean output
client_information[:boolean][:pets] = is_true?(gets.chomp.downcase)


print "Decor Theme: "
client_information[:decor_theme] = gets.chomp


print "City: "
client_information[:city] = gets.chomp.capitalize


print "The area to design is Interior? (y/n): "
client_information[:boolean][:design_area] = is_true?(gets.chomp.downcase)


# Print the client information
print_client_data(client_information)


# Ask if the user wants to make a change in the data structure
puts "\nDo you want to make some changes? (Type 'none' or type the name of the field)"
changes = gets.chomp
	
	# Create conditional statement that end the program if the user input is "none".
	if changes == "none"
		nil
	# Alternative option if the user input is different of "none", meaning the user wants to make a change.
		# Prompt for the specific change,
	else
		puts "New information #{changes}: "
		changes2 = gets.chomp
		# Create conditional statementes to identify the user input in the data structure and to turn the user input in the expected data type
		if client_information[:integer].has_key? changes.to_sym
			client_information[:integer][changes.to_sym] = changes2.to_i

		elsif client_information[:boolean].has_key? changes.to_sym
			client_information[:boolean][changes.to_sym] = is_true?(changes2)

		else 
			client_information[changes.to_sym] = changes2

		end

		# Print the latest version of the client information.
		puts "\nUpdated Information".upcase
		print_client_data(client_information)

	end




