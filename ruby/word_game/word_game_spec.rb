require_relative 'word_game'

describe WordGame do


  let(:players) {WordGame.new}

  	it "initialize instance variables" do
    expect(@letters_to_guess) == [@letters_to_guess]
 	end

  	it "split by characters and stores the new array in a instance variable" do
  	players.string_to_guess("My uncle steve")
    expect(@letters_to_guess) == [["m", "y", " ", "u", "n", "c", "l", "e", " ", "S", "t", "e", "v", "e"]]
  	end

  	it "lowercase the guess string and store it in a variable, compare the letters to guess with guess string and store in a new array the equal elements, in the same index" do
  	players.string_to_guess("My uncle steve")
  	players.check_word("E")	
  	expect(@guess) == [["_ ", "_ ", "  ", "_ ", "_ ", "_ ", "_ ", "e", "  ", "_ ", "_ ", "e", "_ ", "e"]]
  	end


  	it "print the feedback about the progress of the guessing game" do
  	@guess = ["_ ", "_ ", "  ", "_ ", "_ ", "_ ", "_ ", "e", "  ", "_ ", "_ ", "e", "_ ", "e"]
  	expect(@guess) == [["_ ", "_ ", "  ", "_ ", "_ ", "_ ", "_ ", "e", "  ", "_ ", "_ ", "e", "_ ", "e"]]
  	end


  	it "checks if the game is over " do
  	players.print_final_feedback
  	@letters_to_guess = ("My uncle steve")
  	@guess = ("My uncle steve")
  	expect((@letters_to_guess.eql? @guess) || (@tries == @letters_to_guess.length)).to be true
  	end

  	it "checks if the game is over" do
  	players.print_final_feedback
  	@letters_to_guess = ("My uncle steve")
  	@guess = ("d")
  	expect((@letters_to_guess.eql? @guess) || (@tries == @letters_to_guess.length)).to be false
  	end

  	it "checks if the user win the game and print a final message" do
  	players.print_final_feedback
  	players.string_to_guess("My uncle steve")
  	players.check_word("My uncle steve")
  	expect(@letters_to_guess.eql? @guess).to be true
  	end

  	it "checks if the user win the game and print a final message" do
  	players.print_final_feedback
  	@letters_to_guess = ("My uncle steve")
  	@guess = ("d")
  	expect(@letters_to_guess.eql? @guess).to be false
  	end

end


