puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "What is the volume level from 1-10?"
volume = gets.chomp.to_i
if volume == 0
  volume = nil
else
  volume
end
puts "What is the fur color?"
fur = gets.chomp
puts "Is the hamster a good candidate for adoption?"
adoption = gets.chomp
puts "What is the hamster's age?"
hamster_age = gets.chomp.to_i
puts "Your hamster is #{hamster_name}." 
puts "His volume level is #{volume}."
puts "His fur color is #{fur}."
puts "Is he a good candidate for adoption? #{adoption}!"
puts "This hamster is #{hamster_age} years old."