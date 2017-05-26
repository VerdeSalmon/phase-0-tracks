#module Shout
#
#
	#def self.yell_angrily(words)
    	#words + "!!!" + " :("
  	#end
#	
	#def self.yelling_happily(happy_words)
		#puts  "I love #{happy_words}!!!"
#	
	#end
#
#end
#
#
#Shout.yell_angrily("Orange time is over")
#
#Shout.yelling_happily("Mango")


module Shout

	def yell_angrily(words)
    	puts words + "!!!" + " :("
  	end

	def yelling_happily(happy_words)
		puts  "I love #{happy_words}!!!"
	end
end


class SportCoach
	include Shout
end


class SchoolTeacher
	include Shout
end


coach = SportCoach.new
coach.yell_angrily("What are you doing?")
coach.yelling_happily("your kick")


teacher = SchoolTeacher.new
teacher.yell_angrily("Go to the principal's office")
teacher.yelling_happily("your dedication")
