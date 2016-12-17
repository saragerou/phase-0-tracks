def test_method 
  name1 = "Max"
  name2 = "Sara"
  puts "Hi there."
  yield(name1, name2)
end

  test_method { |name1, name2| puts "This is a status message for you, #{name1} and #{name2}."}

letters = ["a", "b", "c", "d", "e"]
  new_letters = []

  puts "Original data:"
  p letters

  letters.each do |letter|
    new_letters << letter.next
  end

  puts "After .each call:"
  p letters
  p new_letters

letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

modified_letters = letters.map do |letter|
  letter.next
end

puts "After .map call"
p letters
p modified_letters

def greetings
  puts "Salutations to you!"
  4.times {yield ("Sara")}
  puts "Take care!"
end

greetings { |name| puts "Think you understand this now, #{name}?"}

### Release 1

actors = ["Matt Damon", "John Travolta", "Tom Cruise"]
actors_hash = { "Matt Damon" => "Bourne",
"John Travolta" => "Grease",
"Tom Cruise" => "Mission: Impossible"
}

p actors
actors.each { |name| puts "#{name}"}

p actors_hash
actors_hash.each do |name, movie|
  puts "#{name} starred in the movie #{movie}."
end 

p actors
actors.map! do |name|  
  name.upcase
end 
p actors

### Release 2

# 1 - Use method that iterates through, deleting items
# Array
letter_array = ["a", "b", "c", "d", "e", "f", "g"]

p letter_array
letter_array.delete_if { |letter| letter > "c"}
p letter_array

# Hash
letter_hash = {
 "a" => "apple",
 "b" => "banana",
 "c" => "carrot",
 "d" => "dog",
 "e" => "elephant",
 "f" => "fish"
}

p letter_hash
letter_hash.delete_if { |letter| letter < "e"}
p letter_hash

# 2 - Use method that filters data structure for items that
# satisfy a certain condition

# Array

number_array = [1, 2, 3, 4, 5, 6, 7, 8]

p number_array
number_array.keep_if { |number| number > 3}
p number_array

# Hash

number_hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight"
}

p number_hash
number_hash.keep_if { |number| number < 7}
p number_hash

# 3 - Use method that filters data structure for only items
# satisfying certain condition

# Array
colors_array = ["blue", "orange", "red", "green"]

p colors_array
colors_array.reverse_each { |color| print color, " "}
p colors_array

# Hash
colors_hash = {
  "blue" => "new",
  "orange" => "sun",
  "red" => "stop",
  "green" => "grass"
}

p colors_hash
colors_hash.fetch("blue")

# 4 - Use method that will remove items until condition in block
# evaluates to false. Then stops.

# Array
#### Note - couldn't get this one to work properly, but I think the method is right
number_array = [1, 2, 3, 4, 5, 6]

p number_array
number_array.take_while {|number| number < 4}
p number_array

#Hash
another_number_hash = {
  1 => "a",
  2 => "b",
  3 => "c",
  4 => "d"
}

p another_number_hash
another_number_hash.has_key?(3)