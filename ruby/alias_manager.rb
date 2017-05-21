
#Method to swap the first and last name.
def name_swap(name)
#Split the string by word and make an array
name_split = name.split(" ")
#swap the elements in the array
name_swap = name_split.reverse
#Make one string, joining the elements in the array
name_join = name_swap.join(" ")

end

#Method to change the vowels for the next vowel and the consonants for the next consonant in the alphabet
def alias_maker(name_swaped)

	vowels = ["a","e","i","o","u"]
	#Make array of consonants to avoid swap spetial characters or nil in the string
	consonants = ("a".."z").to_a - vowels
	#Make the string lowercase
	name_lowercase = name_swaped.downcase
	#Split the string by characters
	letter_split = name_lowercase.chars
	
	#Iterate through the characters array and save the result as a new array in a variable,  
	name_new = letter_split.map do |letter| 
		#Condition to identify vowels in the array of characters
		if vowels.include? letter
			#Change the vowels found in the character array for the next vowel in the vowels array
			vowels.rotate(1)[vowels.index(letter)]
		##Condition to identify consonants in the array of characters
		elsif consonants.include? letter
			#Change the consonants found in the character array for the next consonant in the consonants array
			consonants.rotate(1)[consonants.index(letter)]	
		else 
			#Default outcome for characters in the character array, that aren't vowels or cosonants
			letter
		end
	end
	#Retrieve the new array of swaping characters, make one string, then split by words, capitalize each word and make on string again 
	name_new.join.split(" ").map(&:capitalize).join(" ")
end


#Make new hash to be filled with name and alias, as a pair key-value
names_and_alias = {}


#Define variable to save user input
name = ""
#Create a loop that kep asking names and break when the user type quit
until name == "quit"
	#Prompt for user input
	puts "Type a name to get an alias"
	#Save user input
	name = gets.chomp
	#Condition to change every input, less "quit" input
	if name != "quit"
		#Call changing name methods and print the return
		p alias_name = alias_maker(name_swap(name))
		#Store the names and changed names as they are entered
		names_and_alias.store(name, alias_name)
	end
end

#Call the hash and print every key-value pair with a user friendly message
names_and_alias.each do |name, alias_name|
		p "#{name} is also known as #{alias_name}"
	end

