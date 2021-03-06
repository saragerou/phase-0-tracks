# Arrays are ordered, integer-indexed collections of any object.
# Arrays are indexed starting at 0. Any negative index values are 
# relative to the end of the array. For instance, an index of -1 is the 
# last value in the array, -2 is the second last value in the array. 
# Arrays are useful for sequential information, things like lists, queues, etc.

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array, printing each 
# item in the array separated by an asterisk
p zombie_apocalypse_supplies.join("*")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies 
# in alphabetical order.
p zombie_apocalypse_supplies.sort!

# 3. Create a method to see if a particular item (string) is in the 
# zombie_apocalypse_supplies, don't use any built in methods.
# For instance: are boots in your list of supplies?
def find(str)
  if str == zombie_apocalypse_supplies.index
    true
  end
end


# 4. You can't carry too many things, you've only got room in your pack for 5. 
# Remove items in your zombie_apocalypse_supplies in any way you'd like, leaving only 5.
zombie_apocalypse_supplies.delete("batteries")
zombie_apocalypse_supplies.delete_if { |item| item == "rations" }
zombie_apocalypse_supplies.shift
p zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies. 
# Create a new combined supplies list out of your zombie_apocalypse_supplies 
# and their supplies below. You should get rid of any duplicate items. 
other_survivor_supplies = ["warm clothes", "rations", "compass", "camp stove", "solar battery", "flashlight"]

new_array = []
new_array << zombie_apocalypse_supplies + other_survivor_supplies
new_array = new_array.flatten!
new_array = new_array.uniq
p new_array

# A Hash is a dictionary-like collection of unique keys and their values. 
# Also called associative arrays, they are similar to Arrays, but where an 
# Array uses integers as its index, a Hash allows you to use any object type. 
# In other programming languages, they are sometimes called dictionaries.
# Hashes enumerate their values in the order that the corresponding keys were inserted.
# Hashes show relational data, we store data in key/value pairs.

extinct_animals = {"Tasmanian Tiger" => 1936, "Eastern Hare Wallaby" => 1890, "Dodo" => 1662, "Pyrenean Ibex" => 2000, "Passenger Pigeon" => 1914, "West African Black Rhinoceros" => 2011, "Laysan Crake" => 1923}

# 1. Iterate through extinct_animals, printing each key/value pair with a dash in 
# between the key and value, and an asterisk between each pair
extinct_animals.each { |print| puts "#{print}*"}

# 2. Keep only animals in extinct_animals if they were extinct before the year 
# 2000, don't use any special methods from the Hash module.
extinct_animals.delete_if {|key, value|  value < 2000 }
p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went 
# extinct 3 years before the date provided. Update the values in extinct_animals 
# so they accurately reflect what year the animal went extinct.
extinct_animals.update(extinct_animals){|key,value| (value - 3)}
p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure. 
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
extinct_animals.has_key?("Andean Cat")
extinct_animals.has_key?("Dodo")
extinct_animals.has_key?("Saiga Antelope")

# 5. We just found out that the Passenger Pigeon is actually not extinct! Remove 
# them from extinct_animals and return the key value pair as a two item array.
extinct_animals.delete("Passenger Pigeon")
p extinct_animals.to_a