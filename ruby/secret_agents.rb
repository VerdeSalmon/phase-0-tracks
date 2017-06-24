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


def decrypt(word)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	decrypt_word = ""
	letter_count = 0
	until letter_count == word.length
		decrypt_word << alphabet[alphabet.index(word[letter_count])-1]
		letter_count+=1
	end
	p decrypt_word

end


def pickone(password_b, password)
	if password_b == "encrypt"
		encrypt(password)
	else 
		decrypt(password)
	end 
end



#----------DRIVE CODE-------------


encrypt("abc") #should return "bcd"
encrypt("zed") #should return "afe"
decrypt("bcd") #should return "abc"
decrypt("afe") #should return "zed"


#The encrypt method gave us an implicit return to pass onto the decrypt method as an argument.
decrypt(encrypt("swordfish"))



puts "Would you like to encrypt or decrypt the password?"
password_b = gets.chomp

puts "Enter your password."
password = gets.chomp


pickone(password_b, password)