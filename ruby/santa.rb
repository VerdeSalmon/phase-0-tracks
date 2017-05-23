class Santa

	def initialize
		puts "Initialize Santa instance..."
	end

	def speak
		puts "Ho,ho,ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end
end



#DRIVER CODE

happy_santa = Santa.new

happy_santa.speak

happy_santa.eat_milk_and_cookies("chococaramel")