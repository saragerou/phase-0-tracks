# Write a method that takes a spy's real name and creates a fake name
# Swap first and last name.
# Change all vowels to next vowel
# Change all consonants to the next consonant

def code_name(str)
  # Define the consonants and vowels in arrays
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  vowels = ["a", "e", "i", "o", "u"]
  # Downcase the results so that they will apply to the arrays
  str = str.downcase
  str = str.split("")
  # Run a loop through each character to change vowels and consonants
  str_new = str.map do |char|
    # Using .include? to see if the characters set out in the
    # vowel array are included in the string
    if vowels.include?(char)
      # Use .rotate to insert the next character
      vowels.rotate(1)[vowels.index(char)]
    # Using .include? to see if the characters set out in the
    # consonant array are included in the string
    elsif consonants.include?(char)
      consonants.rotate(1)[consonants.index(char)]
    else
      char
    end
  end
  # Join individual letters in the array back into a string
  str_new.join("")
end

def swap_names(str)
  # Split the names/string into an array
  str = str.split(" ")
  # Swap first and last name
  if str.index > 0
    str[0], str[1] = str[1], str[0]
  # Re-capitalize the letters
    str.map(&:capitalize).join(" ")
  else
    str.join("")
end

# p swap_names(code_name("Sara Gerou"))  

name = ""
puts "Greetings sir/ma'am."
puts "If you are reading this, then you must be in need of a code name."
until name == "quit"
  puts "Enter your name or type 'quit' to exit:"
  name = gets.chomp
  result = code_name(swap_names(name))
  puts "#{name} is actually #{result}."
  puts "Thank you!"
end

# Can't quite get this to work completely.


# Didn't use the following, but another way to approach
# might be with a hash.

# letters = {
#  u: "a",
#  U: "U",
# z: "b",
#  Z: "B",
#  b: "c",
#  B: "C",
#  c: "d",
#  C: "D",
#  a: "e",
#  A: "E",
#  d: "f",
#  D: "F", 
#  f: "g",
#  F: "G", 
#  g: "h",
#  G: "H", 
#  h: "j",
#  H: "J",
#  j: "k",
#  J: "K", 
#  k: "l",
#  K: "L", 
#  l: "m",
#  L: "M", 
#  m: "n",
#  M: "N",
#  i: "o",
#  I: "O",
#  n: "p",
#  N: "P", 
#  p: "q",
#  P: "Q", 
#  q: "r",
#  R: "S", 
#  r: "s", 
#  s: "t",
#  S: "T",
#  o: "u",
#  O: "U",
#  t: "v",
#  T: "V", 
#  v: "w",
#  V: "W", 
#  w: "x",
#  W: "X", 
#  x: "y",
#  X: "Y",
#  y: "z",
#  Y: "Z"
#}