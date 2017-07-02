#Create a data structure to store user input in a key/value pair
client_information = {
	#string is the incoming value data type by default in client_information hash.
	client_name: "",
	#Nested hashs to differentiate the incoming value data type.
	integer: {age: "", number_of_children: "",},
	boolean: {pets: "", design_area: "",},
	decor_theme: "",
	city: "",
}

def is_true?(input)
	input == "y" 
end


#Driver Code

#Prompt the user for information.
puts "Client Name: "
#Save input in the hash keys
client_information[:client_name] = gets.chomp


puts "Age: "
#Save input in a nested hash keys and changing input from string to integer.
client_information[:integer][:age] = gets.chomp.to_i


puts "Number of Children: "
client_information[:integer][:number_of_children]= gets.chomp.to_i


puts "Any Pets? (y/n)"
#Save input in a nested hash keys.
client_information[:boolean][:pets] = is_true?(gets.chomp.downcase)


puts "Decor Theme: "
client_information[:decor_theme] = gets.chomp


puts "City"
client_information[:city] = gets.chomp


puts "the area to design is Interior? (y/n)"
#Save input in a nested hash keys.
client_information[:boolean][:design_area] = is_true?(gets.chomp.downcase)


#Print the hash with the user input.
puts client_information


#To get any key of the hash client_information or none.
puts "Do you want to make some changes? (Type 'none' or type the name of the field)"
changes = gets.chomp
#End the program if the user input is "none".
	if changes == "none"
		nil
	#Alternative option if the user input is different of "none", meaning the user wants to make a change.
	else
		#Prompt for the specific change, using the input stored in changes variable.
		puts "New information #{changes}: "
		#Save specific change input.
		changes2 = gets.chomp
		
		#Look in integer nested hash for the key that the user wants to be change.
		if client_information[:integer].has_key? changes.to_sym
			#if the searched key is in integer nested hash, save the input in that key and convert the new incoming value from string to integer.
			client_information[:integer][changes.to_sym] = changes2.to_i
		
		#Look in boolean nested hash, for the key that the user wants to be change.
		elsif client_information[:boolean].has_key? changes.to_sym
			#If the searched key is in boolean nested hash, convert the new incoming value from string to boolean.
			if changes2 == "y"
				changes2 = true
			else
				changes2 = false
			end
			#Save the boolean in that key.
			client_information[:boolean][changes.to_sym] = changes2

		#If the key that the user wants to be change, isn't in the nested hashes, look in the rest of the keys hashes.
		else 
			#Save the input in the found key, with any data type convertion.
			client_information[changes.to_sym] = changes2
		end

		#Print the latest version of the hash.
		puts "Updated Information: #{client_information}"
	#Exit the program
	end




