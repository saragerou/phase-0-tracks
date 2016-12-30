# One user can enter a word (or phrase, if you would like your 
# game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related 
# to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state 
# of the word. So if the secret word is "unicorn", the user will start 
# out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" 
# after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a 
# taunting message if they lose.


class Hangman

attr_reader = :word, :letter, :masked_word, :is_over, :guess_counter
  
  def initialize(word)
    @word = word.split("")
    @masked_word = Array.new(@word.length,"_")
    p @word
    @guessed_letters = []
    @guess_counter = @word.length
    @is_over = false
  end

  def guess(letter)
  
   p @guess_counter
    
    if @word.include?(letter)
   
      # Guessed letters do not count toward guesses total
      if @guessed_letters.include?(letter)
        puts "That letter has already been guessed!"
      end
      
      @guessed_letters << letter
      
      puts "You got one!"
      puts "There's a(n) '#{letter}' at index:"
      p @word.each_index.select{ |x| @word[x] == letter}
    
      @masked_word.each_index do |x|
        if @word[x] == letter
          @masked_word[x] = letter
        else
          "_"
        end
      end
    
    p @masked_word.join(" ")
    
    if @masked_word == @word
      @is_over = true
      puts "You win!"
    end

    else
      puts "Nope! None of those!"
    end
    @guess_counter -= 1

  end

  def status
    puts "You now have #{@guess_counter} guesses remaining."
  end

end


puts "Give me a word."
word = gets.chomp

game = Hangman.new(word)

until @is_over == true
  puts "Guess a letter!"
  letter = gets.chomp

  p letter

  game.guess(letter)
  game.status
end
  

  

  