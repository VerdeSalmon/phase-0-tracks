# Method that advances every letter of a string one letter forward
# Input= string
# Iterate through the string and 
#   -for each letter save the next letter in the alphabet.
# Output = new string made with next letter.


def encrypt(word)
	encrypted_word = ""
	letter_count = 0
	until letter_count == word.length
		encrypted_word << word[letter_count].next
		letter_count+=1
	end

	p encrypted_word

end



# Method that go back one letter of a string
# Input = string
# Iterate through the string and 
# 	-for each letter save the previous letter, according to the alphabet
# Output = new string made with previous letter.


