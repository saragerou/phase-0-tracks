# A program allowing an interior designer to enter details of a client
# client name, age, number of children, decor theme, etc.

# Prompt designer for information.
# Convert entered data to correct formatting
puts "Interior Design Questionnaire"
puts "Client Name:"
name = gets.chomp

puts "Client Age:"
age = gets.chomp.to_i

puts "Number of Children:"
children = gets.chomp.to_i

puts "Preferred decorating theme:"
theme = gets.chomp

puts "Pets? (y/n)"
pets = gets.chomp
if pets == "y"
  pets = true
  elsif pets == "n"
  pets = false
end

puts "Favorite Color:"
color = gets.chomp

# Based on responses, assign symbols within the hash

client = {
  name: name,
  age: age,
  children: children,
  theme: theme,
  pets: pets,
  color: color
}

# Print hash with input data
p client

# Give user opportunity to update a key
puts "Would you like to update any of the information you entered?"
puts "If so, which section? (name, age, children, theme, pets, color, none)"
change = gets.chomp

# Get new info to whatever user wants to change
# Convert entered data to correct formatting
# Update hash value
if change == "none"
  puts "Okay, great! Have a good day!"
elsif change == "name"
  puts "What would you like to change the name to?"
  client[:name] = gets.chomp
  puts "Your info has been updated!"
elsif change == "age"
  puts "What would you like to change the age to?"
  client[:age] = gets.chomp.to_i
  puts "Your info has been updated!"
elsif change == "children"
  puts "How many children does the client have?"
  client[:children] = gets.chomp.to_i
  puts "Your info has been updated!"
elsif change == "theme"
  puts "What is the client's preferred theme?"
  client[:theme] = gets.chomp
  puts "Your info has been updated!"
elsif change == "pets"
  puts "Does the client have pets?"
  new_pet = gets.chomp
    if new_pet == "y"
    new_pet = true
    elsif new_pet == "n"
    new_pet = false
    end
  client[:pets] = new_pet
  puts "Your info has been updated!"
elsif change == "color"
  puts "What is the client's favorite color?"
  client[:color] = gets.chomp
  puts "Your info has been updated!"
end

p client