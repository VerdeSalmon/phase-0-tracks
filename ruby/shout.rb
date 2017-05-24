module Shout


	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end
	
	def self.yelling_happily(happy_words)
		puts  "I love #{happy_words}!!!"
	
	end

end


Shout.yell_angrily("Orange time is over")

Shout.yelling_happily("Mango")