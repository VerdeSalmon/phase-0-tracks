#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'

def name_swap(name)

name_split = name.split(" ")
name_swap = name_split.shuffle
name_join = name_swap.join(" ")

end


def alias_maker(name_swaped)
	
	vowels = ["a","e","i","o","u"]
	consonants = ("a".."z").to_a - vowels
	name_lowercase = name_swaped.downcase
	letter_split = name_lowercase.chars
	

	name_new = letter_split.map do |letter| 
		if vowels.include? letter
		vowels.rotate(1)[vowels.index(letter)]
		elsif consonants.include? letter
		consonants.rotate(1)[consonants.index(letter)]	
		else 
			letter
		end
	end 
	name_new.join.split(" ").map(&:capitalize).join(" ")
end



puts "Type a name to get an alias"
name = gets.chomp
p alias_maker(name_swap("Felicia Torres")) #Vussit Gimodoe