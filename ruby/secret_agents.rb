#Defining a method that increases each letter of the string by one.
#def encrypt(word)
#	#Initialized the counter outside the loop.
#	i = 0
#	#Iterating through each index until it matches the given word length.
#	until i == word.length
#		#Printing the incremented letter following each index.
#		next_word = word[i].next 
#		if next_word[i] == "aa"
#			print word[i-1].next
#		#else 
#		#	print word[i].next
#		end	 
#		#Incrementing the counter by one.
#		i += 1 
#	#Closes the loop.	
#	end
##Closes the scope of the method.	


#Defining a method that increases each letter of the string by one.
def encrypt(word)
#Defining variable.
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	#Initialized the counter outside the loop.
	i = 0
	words_str = ""
	#Iterating through each index until it matches the given word length.
	until i == word.length
		#Printing the decrementing letter following each index.
		words_str << alphabet[((alphabet.index(word[i]))+1) % 26]
		#Incrementing the counter by one.
		i += 1
	#Closes the loop.	
	end
	words_str
	#for i in 0..2
#		puts i if word[i] == alphabet[i]
#			print word[i-1]
#	end

#Closes the scope of the method.	

end

#Defining a method that decreases each letter of the string by one. 
def decrypt(word)
	#Defining variables.
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	#Initialized the counter outside the loop.
	i = 0
	#Iterating through each index until it matches the given word length.
	until i == word.length
		#Printing the decrementing letter following each index.
		print alphabet[((alphabet.index(word[i]))-1) % 26]
		#Incrementing the counter by one.
		i += 1
	#Closes the loop.	
	end

	#for i in 0..2
#		puts i if word[i] == alphabet[i]
#			print word[i-1]
#		
#	end

#Closes the scope of the method.	
end


def pickone(password_b, password)
	if password_b == "encrypt"
		puts encrypt(password)
	else 
		puts decrypt(password)
	end 
end

#DRIVER CODE.

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

#The encrypt method gave us an implicit return to pass onto the decrypt method as an argument.
puts decrypt(encrypt("swordfish")) 




puts "Would you like to encrypt or decrypt the password?"
	password_b = gets.chomp

puts "Enter your password."
	password = gets.chomp

puts pickone(password_b, password)
	