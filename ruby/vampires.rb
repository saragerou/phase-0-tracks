# What is your name?
# How old are you? What year were you born?
# Our company cafeteria serves garlic bread.
# Should we order some for you?
# Would you like to enroll in health insurance?

# Ask how many employees and loop (this will be an overall loop of the questions)
puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

while number_of_employees > 0

 puts "What is your name?"
  name = gets.chomp
  
  puts "How old are you?"
  age = gets.chomp.to_i
  
  puts "What year were you born?"
  year = gets.chomp.to_i
  
  puts "Our cafeteria serves garlic bread. Should we orders some for you? (y/n)"
  garlic = gets.chomp
  
  puts "Would you like to enroll in the company's health insurance? (y/n)"
  insurance = gets.chomp
  
  # Compare age given to calculated age given the year born, compared to 2016
  vampire_test = ""
  if age == (2016 - year)
    age = true
    vampire_test = "Probably not a vampire."
  else 
    age = false
    vampire_test = "Results inconclusive."
  end
  
  # If age is wrong and they hate garlic bread OR waive insurance, result is "Probably not a vampire."
  if age == false && (garlic == "y" || insurance == "n")
    vampire_test = "Probably not a vampire."
  else
    vampire_test = "Results inconclusive."
  end
  
  # If age is wrong, hates garlic bread AND doesn't want insurance, result is "Almost certainly a vampire."
  if age == false && garlic == "n" && insurance == "n"
    vampire_test = "Almost certainly a vampire."
  else
    vampire_test = "Reults inconclusive."
  end
  
  # Do you have allergies loop?
  allergies = ""
  while allergies != "done"
    puts "List any allergies you might have. You can type 'done' when you are finished."
    allergies = gets.chomp
    if allergies == "sunshine"
      break
      vampire_test = "Probably a vampire."
    end
  end
  
  # Even if the employee is an amazing liar otherwise, anyone going by the name of "Drake Cula" or "Tu Fang" is clearly a vampire. Print "Definitely a vampire."
  if (name == "Tu Fang") || (name == "Drake Cula")
    vampire_test = "Definitely a vampire."
  end

number_of_employees = number_of_employees - 1

puts vampire_test
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end