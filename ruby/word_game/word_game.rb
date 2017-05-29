#Password block copy from https://stackoverflow.com/questions/2338889/how-to-hide-password-input-from-terminal-in-ruby-script

#begin
  #require 'io/console'
#rescue LoadError
#end
#
  #def get_secret_string(prompt="Password: ")
    #print prompt
    #STDIN.noecho(&:gets).chomp
  #end


#--------------


class WordGame
 
	attr_reader :game_over#, 
	attr_accessor :guess, :letters_to_guess


	def initialize
		puts "This is the Word Game!"
		@game_over
		@tries = 0
	end


	def string_to_guess(secret_string)
		@letters_to_guess = secret_string.downcase.chars
		p @guess = ["_ " * @letters_to_guess.length]
	end


	def check_word(guess_string)
		@guess_string = guess_string
		guess_letters = guess_string.downcase.chars
		@guess = []

		@letters_to_guess.each do |letter| #letters to guess is nil
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


	def progress_feedback

		latest_guess = []
		guessed_letters = []

		
		@guess.each {|letter| print letter }
		puts " "	
	  		
	  	if !guessed_letters.include? @guess_string
	  		guessed_letters << @guess_string #it's not adding every string. You have to loop
	  		p guessed_letters 			
	  	end
	
		p @tries = guessed_letters.count 
		
		latest_guess << @guess

	end


	def print_final_feedback
	
		if (@letters_to_guess.eql? @guess) || (@tries == @letters_to_guess.length)
			
			@game_over = true

			if (@letters_to_guess.eql? @guess) 
				puts " Amazing Job... YOU WIN!!!"
			else 
				puts "You lose the game, but you win a dictionary :D.\n Try Again!"
			end
		end
	end

end



#players = WordGame.new
#
##players.string_to_guess(get_secret_string("Enter a secret word or phrase: "))
#
#players.string_to_guess("else")
#
#until players.game_over == true
#	
	#puts "Enter a letter, word or phrase as attempt to guess the secret string"
	#guess_string = gets.chomp
#
	#players.check_word(guess_string)
#
	#players.progress_feedback
#
	#players.print_final_feedback
#
#end











