require_relative 'word_game'

describe WordGame do


  let(:players) {WordGame.new}

  	it "initialize instance variables" do
    expect("This is the Word Game!") == "This is the Word Game!"
  	end

  	it "split by characters and stores the new array in a instance variable" do
  	players.string_to_guess("Mango")
    expect(@letters_to_guess) == [["m", "a", "n", "g", "o"]]
  	end

  	it "lowercase the guess string and store it in a variable, compare the letters to guess with guess string and store in a new array the equal elements, in the same index" do
  	players.string_to_guess("Mango")
  	players.check_word("G")	
  	expect(@guess) == [["_ ", "_ ", "_ ", "g", "_ "]]
  	end


  	it "print the feedback about the progress of the guessing game" do
  	@guess = ["_ ", "_ ", "_ ", "g", "_ "]
  	expect(@guess) == [["_ ", "_ ", "_ ", "g", "_ "]]
  	end


  	it "checks if the game is over " do
  	@letters_to_guess = ["m", "a", "n", "g", "o"]
  	@guess = ["m", "a", "n", "g", "o"]
  	expect((@letters_to_guess.eql? @guess) || (@tries == @letters_to_guess.length)).to be true
  	end

  	it "checks if the game is over" do
  	@letters_to_guess = ["m", "a", "n", "g", "o"]
  	@guess = ["_ ", "_ ", "g", "_", "o"]
  	expect((@letters_to_guess.eql? @guess) || (@tries == @letters_to_guess.length)).to be false
  	end

  	it "checks if the user win the game and print a final message" do
  	@letters_to_guess = ["m", "a", "n", "g", "o"]
  	@guess = ["m", "a", "n", "g", "o"]
  	expect(@letters_to_guess.eql? @guess).to be true
  	end

  	it "checks if the user win the game and print a final message" do
  	@letters_to_guess = ["m", "a", "n", "g", "o"]
    @guess = ["_ ", "a", "n", "_", "_ "]
  	expect(@letters_to_guess.eql? @guess).to be false
  	end

end


