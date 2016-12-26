class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof! " *int
  end

  def roll_over
    puts "\*rolls over\*"
  end

  def dog_years(human_years)  
    dog_years = 7 * human_years
    dog_years
  end

  def play_dead
    puts "Bang!"
    puts "\*plays dead\*"
  end
  
  def initialize
    puts "Initializing new puppy instance..."
  end

end

neptune = Puppy.new
neptune.fetch("bone")
neptune.speak(6)
neptune.roll_over
neptune.dog_years(9)
neptune.play_dead

# Release 2

class Kitten
  
  def initialize(name)
    puts "A new kitten! Say hello to #{name}!"
  end

  def play_with_string
    puts "Kitten knows it's cute and plays with string."
  end

  def meow(int)
    puts "Meow! " * int
  end

  def interrupt(object)
    puts "The kitten is walking all over your #{object}. How annoying... yet adorable."
  end

end

kitten1 = Kitten.new("Clarence")
kitten1.meow(7)
kitten1.play_with_string
kitten1.interrupt("computer")

names_array = ["Forty-Nine", "Fifty", "Seventy-Two", "Milly", "Fish", "Buffalo", "Lamp", "Crayon", "President", "Vice President", "Queen", "King", "Tutu", "Apple", "Josh", "Matt", "Francine", "Fluffy", "Thirty-Nine", "Phil", "Whiskers", "Ocotpus", "Pineapple", "Donkey", "Herman", "Brent", "Jason", "Kyle", "Miranda", "Martha", "Jimmy", "Princess", "Thomas", "Stringbean", "Tulip", "Sara", "Bob", "Frank", "Giraffe", "Owlington", "Orange", "Friend", "Tank", "Purple", "Coffee", "Bean", "Tiger", "Lion", "Bear", "Posey"]

kitten_instances = []

names_array.each do |kitten|
  kitten_instances << Kitten.new(kitten)
end

kitten_instances.each do |instance|
  instance.meow(4)
  instance.play_with_string
  instance.interrupt("desk")
  p instance
end


