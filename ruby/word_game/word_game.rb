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
 
    attr_reader :game_over, :guess_string
    attr_accessor :tries 


    def initialize
        puts "This is the Word Game!"
        @game_over
        @tries = 0
        @guess = []
    end


    def string_to_guess(secret_string)
        @letters_to_guess = secret_string.downcase.chars
        
        @letters_to_guess.each do |letter|
            @guess << "_ " * letter.length
        end

        print @guess
        puts " "   
    end


        
    def check_word(guess_string)

    	@guess_string = guess_string.downcase
        
         @letters_to_guess.each do |letter| 
            if @guess_string.include? letter
                @guess.delete_at(@letters_to_guess.index(letter)) 
                @guess.insert(@letters_to_guess.index(letter), letter)
            end    
        end
        @guess
    end


    def progress_feedback

        @guess.each {|letter| print letter }
        puts " "
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


#DRIVER CODE

#players = WordGame.new
#
#players.string_to_guess(get_secret_string("Enter a secret word or phrase: "))
#
#guessed_letters = []
#until players.game_over == true
#   
    #puts "Enter a letter, word or phrase as attempt to guess the secret string"
    #guess_string = gets.chomp
#
    #players.check_word(guess_string)
#
    #if !guessed_letters.include? players.guess_string
        #guessed_letters << players.guess_string 
        #guessed_letters
    #end
#
    #p players.tries = guessed_letters.count 
#
    #players.progress_feedback
#
    #players.print_final_feedback
#
#end











