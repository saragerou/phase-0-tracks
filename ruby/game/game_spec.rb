# One user can enter a word (or phrase, if you would like 
# your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available 
# is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current 
# state of the word. So if the secret word is "unicorn", the user 
# will start out seeing something like "_ _ _ _ _ _ _", which would 
# become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a 
# taunting message if they lose.

require_relative 'game.rb'

describe Game do
  let(:test) {Game.new("tuna")}

  it "stores the word retrieved as a string" do
    expect(test.original_word).to eq "tuna"
  end

  it "assigns splits the letters from the original word into an array" do
    expect(test.word).to eq ["t", "u", "n", "a"]
  end

  it "assigns underscores for each letter in an array for the masked word" do
    expect(test.masked_word).to eq ["_", "_", "_", "_"]
  end

  it "shows win when all letters are guessed before guesses out" do
   test.guess("a")
   test.guess("u")
   test.guess("t")
   test.guess("n")
   expect(is_over = true)
 end

 it "allows the number of guesses to include the character count plus 2" do
  expect(test.guess_counter).to eq 6
 end

end