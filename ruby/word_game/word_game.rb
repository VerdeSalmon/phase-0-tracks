
class WordGame
 
	attr_reader :letters_to_guess
	attr_accessor :guess


	def initialize
		@letters_to_guess
		@guess
	end


	def string_to_guess(secret_string)
		@letters_to_guess = secret_string.downcase.chars
	end

	def check_word(guess_string)
		guess_letters = guess_string.downcase.chars
		@guess = []
		@letters_to_guess.each do |letter|
		if guess_letters.include? letter
			@guess << letter 
		elsif letter == " "
			@guess << "  "			
		else 
			@guess << "_ "
		end
	end
	@guess
	end


	def print_end_feedback

			if @letters_to_guess.eql? @guess 
				puts "Amazing Job,\n YOU WIN!!!"
			else 
				puts "You lose the game, but you win a dictionary :D.\n Try Again!"
			end
	
	end

end












