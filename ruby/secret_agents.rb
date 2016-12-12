# Encrypt method that advances each character by one index
  # Ensure that 'z' returns 'a' and not 'aa'
  # Leave all blanks unchanged
# Loop so that each letter is run and the 
# index is advanced by one
  # Loop must take string length into account

def encrypt(str)
  # Index needs to be set before loop begins
  index = 0
    # Loop needs to run the entire length of the string, each letter
    while index < str.length
      # Spaces are to remain spaces
      if str[index] == " "
      str[index] = str[index]
      # .next will increase the letter by one index
      else
      str[index] = str[index].next
      end
    # Move on to the next letter 
    index += 1  
    end
  p str
end 

# The directions also called out to ensure that 'z' would change to 'a'
# I had many iterations, but was unable to make this work in this code
    #if encrypt_output == "aa"
    #encrypt_output = "a"
    #end

def decrypt(str)
  # As there isn't an opposit of .next, mapping a key of alphabet to work with
  key = "abcdefghijklmnopqrstuvwxyz"
  # Index needs to be set before loop begins
  index = 0
    while index < str.length
      # Spaces are to remain spaces
      if str[index] == " "
      str[index] = str[index] 
      # Find letter location with interpolation of string index
      else letter = key.index("#{str[index]}")
      # When letter location is found, decrease its space in the alphabet key by 1
      str[index] = key[letter-1]
    end
  # Move on to the next letter 
  index += 1
  end
  p str
end  

# Why does decrypt(encrypt("swordfish")) work?
  # It works because the methods are being read to first solve the encrypt
  # and after, work its way to the outer set of parenthesis to solve decrypt

# Secret Agent

# Create code that asks the user (secret agent) if they want encrypt or decrypt
# Ask them for password to encrypt or decrypt
# Gather answer with gets.chomp
# Code will run and print results on screen, based on encrypt/decrypt and password

puts "Greeting, Secret Agent. Would you like to 'encrypt' or 'decrypt' a password?"
answer = gets.chomp
puts "Great. #{answer.capitalize} it is."
puts "Next we need you to type a password:"
password = gets.chomp

if answer == "encrypt"
  encrypt(password)
else answer == "decrypt"
  decrypt(password)
end

puts "Be careful out there, Agent."