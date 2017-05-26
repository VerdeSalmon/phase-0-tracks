class Santa
	attr_reader :ethnicity

	attr_accessor :age, :gender, :reindeer_ranking


	def initialize(gender, ethnicity)
		puts "Initialize Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking =["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end


	def speak
		puts "Ho,ho,ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie"
	end

	#def celebrate_birthday(new_age)
		#@age = new_age + 1
	#end

	#def get_mad_at(reindeer_name)
		#if @reindeer_ranking.include? reindeer_name
		#@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
		#end
		#@reindeer_ranking
	#end

	#Getter methods for attributes (Now readable with attr_reader declaration)
	#def gender
		#@gender
	#end

	#def ethnicity
		#@ethnicity
	#end

	#def age
		#@age
	#end

	#Setter methods for attributes (Now writable with attr_accessor declaration, also readable)
	#def gender=(new_gender)
		#@gender = new_gender
	#end 
	
end


happy_santa = Santa.new("female","latino")
happy_santa.speak
happy_santa.eat_milk_and_cookies("chococaramel")
happy_santa.gender
happy_santa.gender = "male"



some_genders_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
some_ethnicities_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


santas = 200.times.collect {Santa.new(some_genders_list.sample, some_ethnicities_list.sample)}

#Using attr_accessor, instead of instance method or setter methods
santas.each do |santa|
	#santa.celebrate_birthday(rand(0..140))
	 santa.age = rand(0..140)
	end

#Using attr_accessor, instead of instance method or setter methods
santas.each do |santa|
	if santa.reindeer_ranking.include? santa.reindeer_ranking.sample
		#santa.get_mad_at("Vixen")
		santa.reindeer_ranking.insert(-1, santa.reindeer_ranking.delete_at(santa.reindeer_ranking.index(santa.reindeer_ranking.sample)))
	end	
end


santas.each do |santa|
puts " "
puts "#{santas.index(santa)+1}. #{santa}: #{santa.gender}, #{santa.ethnicity}, #{santa.age}, #{santa.reindeer_ranking}"
end

