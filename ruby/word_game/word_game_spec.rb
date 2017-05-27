require_relative 'word_game'

describe WordGame do


  let(:players) {WordGame.new}

  	it "initialize instance variables" do
    expect().to eq [""]
 	end


  	it "split by characters and stores the new array in a instance variable" do
  	players.string_to_guess("My uncle steve")
    expect(players.string_to_guess).to eq ["m", "y", " ", "u", "n", "c", "l", "e", " ", "S", "t", "e", "v", "e"]
  	end