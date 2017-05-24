class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender


	def initialize(gender, ethnicity)
		puts "Initialize Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end

	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	@age = 0

	def speak
		puts "Ho,ho,ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie"
	end

	def celebrate_birthday(year)
		@age = 2017 - year
	end

	def get_mad_at( )
		#take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings
		@reindeer_ranking
	end

	#Getter methods for attributes (Now readable with attr_reader declaration)
	#def gender
		#@gender
	#end
#
	#def ethnicity
		#@ethnicity
	#end
#
	#def age
		#@age
	#end

	#Setter methods for attributes (Now writable with attr_accessor declaration, also readable)
	#def gender=(new_gender)
		#@gender = new_gender
	#end 

	
end


happy_santa = Santa.new("female","latino")



santas = []

some_genders_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

some_ethnicities_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]



#DRIVER CODE


happy_santa.speak

happy_santa.eat_milk_and_cookies("chococaramel")

p happy_santa.gender

happy_santa.gender = "male"

p happy_santa.gender

some_genders_list.length.times do |i|
  santas << Santa.new(some_genders_list[i], some_ethnicities_list[i])
end



#reindeer_ranking.each do |reindeer|
	#Iterate over array of cookies
	#iterate over array of santas
	#puts "#{happy_santa.eat_milk_and_cookies("chococaramel")} bringing for #{reindeer}"
#end

#make a loop for santas age age, hash. 