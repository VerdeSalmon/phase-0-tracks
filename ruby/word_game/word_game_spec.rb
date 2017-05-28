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

  	it "split by characters, stores the new array in a variable, compare to arrays and store in a new array the equal elements in the same index" do
  	players.string_to_guess("My uncle steve")
  	players.check_word("e")	
  	expect(@guess) == [["_ ", "_ ", "  ", "_ ", "_ ", "_ ", "_ ", "e", "  ", "_ ", "_ ", "e", "_ ", "e"]]
  	end

  	it "print message for the user when the game is over" do
  	players.string_to_guess("My uncle steve")
  	players.check_word("My uncle steve")
  	expect(@letters_to_guess.eql? @guess).to be true
  	end

  	it "print message for the user when the game is over" do
  	players.string_to_guess("My uncle steve")
  	players.check_word("p")
  	expect(@letters_to_guess.eql? @guess).to be false
  	end

 
end



