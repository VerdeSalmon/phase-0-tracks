# Define a method to swap the order of the words in a string
		# Input : one string with one or more words.
		# Steps :
			# If the string has one word, nothing change.
			# If the string has more than one word, then:
				# Split the string by word
					# Swap the order of the words
					# Join the words in one string again
		# Output : one string with word order swaped

# Define a method to change vowels in a string for the next vowel (example change vowel 'a' for vowel 'e')
# and change consonants for the next consonant in the alphabet (example change 'd' for 'f')
	# Input : a string
	# Steps :
		# Create a list of vowels and a list of the consonants without the vowels
		# Iterate through the string
			# If it has vowels, change them for the next vowel in the vowels list
			# If it has consonants, change them for the next consonants in the consonants list
			# Otherwise, return the same character in the string
		# Capitalize every word in the string
	# Output : one capitalize string with vowels and consonants changed

# Define method to prompt user input repeatedly
	# Input : 
	# Steps :
		# Loop to prompt user input Until 'quit'
			# Call changing string methods and print the return
			# Store the strings and the changed strings as they are entered
	# Output : list of strings and changed strings

# Define a method to print the strings and changed strings list, in a user friendly way




Vowels = %w[a e i o u]
Consonants = ("a".."z").to_a - Vowels


def name_swap(name)
	name.split(" ").rotate!.join(" ")
end


def alias_maker(name_swaped)
	name_letters = name_swaped.chars
	alias_name = name_letters.map do |letter|
		if Vowels.include? letter
			Vowels.rotate[Vowels.index(letter)]
		elsif Consonants.include? letter
			Consonants.rotate[Consonants.index(letter)]	
		else
			letter
		end			
	end
	alias_name.join.split(" ").map(&:capitalize).join(" ")
end


def alias_list
	names_and_alias = {}
	name = ""
	until name == "quit"
		puts "Type a name to get an alias and type 'quit' when you'r done"
		name = gets.chomp.downcase
		if name != "quit"
			puts alias_name = alias_maker(name_swap(name))
			names_and_alias.store(name, alias_name)
		end
	end
	print_alias(names_and_alias)
end


def print_alias(names_and_alias)
	names_and_alias.each do |name, alias_name|
		puts "+ #{name} is also known as #{alias_name}"
	end
end



# ------------ Driver Code -----------------


alias_list