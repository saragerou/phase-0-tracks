class Game
  attr_accessor :original_word, :word, :is_over, :masked_word, :guess_counter, :guessed_letters
  
  def initialize(word)
    @original_word = word
    @word = word.downcase.split("")
    @masked_word = Array.new(@word.length,"_")
    @guessed_letters = []
    @guess_counter = @word.length + 2
    @is_over = false
  end

  def guess(letter)
  
    if @word.include?(letter)
   
      if @guessed_letters.include?(letter)
        puts "That letter has already been guessed! Try again."
      
      elsif
        @guessed_letters << letter
        @guess_counter -= 1
       
        puts "You got one!"
        puts "There's a(n) '#{letter}' at index:"
        p @word.each_index.select{ |x| @word[x] == letter}
      
        @masked_word.each_index do |x|
          if @word[x] == letter
            @masked_word[x] = letter
            puts "Oh, you're not a computer?"
            puts "In human language, that means it's at blank #{x + 1}."
          else
            "_"
        end
        
      end
    end
    
      if @masked_word == @word
        @is_over = true
      end
      
      if @guess_counter == 0
        @is_over = true
      end

      else
        puts "Nope! None of those!"
        @guess_counter -= 1
        @guessed_letters << letter
      end
  end

  def winner
    if @is_over == true && @masked_word == @word
      puts "This isn't your first rodeo! You win!"
    else
      puts "You're a bad guesser. Game over."
    end
  end

  def status
    
    if @guess_counter == 0 && @masked_word != @word
      @is_over = true
      puts "Too bad, so sad. No more guesses!"
      puts "But at least you guessed: #{@masked_word.join("")}."
    elsif @masked_word == @word
      @is_over = true
      puts "You guessed the word: #{@masked_word.join("")}!"
    else
      puts "Here's what we have so far:"
      p @masked_word.join(" ")
      puts "You now have #{@guess_counter} guesses remaining."
    end
    
  end
end


# User interface

puts "Give me a word."
word = gets.chomp
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts "______________________________________"

game = Game.new(word)

puts "No peaking! Now it's your turn to guess."

until game.is_over
  puts "Guess a letter!"
  letter = gets.chomp.downcase

  p letter

  game.guess(letter)
  game.status
end

  game.winner
