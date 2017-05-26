 #Release 0 and Release 1

 class Puppy

   	def initialize
		"Initializing new puppy instance..."
   	end


  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
   	end
   

   	def speak(number)
   		number.times{p "Woof!"}
   	end
   

   	def rollover
   		p "*rolls over*"
   	end
   

   	def dog_years(human_years)
   		dog_years = human_years * 7
   		p dog_years
   	end
   

   	def sit
   		p "*sits*"
   	end
 end

 fido = Puppy.new

 fido.fetch("ball")
 fido.speak(10)
 fido.rollover
 fido.dog_years(10)
 fido.sit

#Release 2

class Traveler

  	def initialize
    	"Initializing new traveler..."
  	end
	
	
  	def country_in(country)
    	"This traveler is in #{country} right now!"
  	end
	
	
  	def pictures_taken(amount=0, country)
    	"This photographer took #{amount} pictures in #{country}"
  	end

end


traveler = Traveler.new

p traveler.country_in("The Netherlands")
p traveler.pictures_taken(200, "France")


travelers = 50.times.collect {Traveler.new}

#p travelers

countries = {"France" => 200, "USA" => 34, "Canada" => 20, "Holland" =>100, "Germany"=> 220, "Greece"=> 30, "Spain"=> 20, "England"=> 40}
random_contry = countries.keys.sample

travelers.each do |instance|
		p instance.country_in(random_contry)
  		p instance.pictures_taken(countries[random_contry],random_contry)
end

