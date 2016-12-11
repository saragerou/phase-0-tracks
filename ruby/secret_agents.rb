# Encrypt method that advances every 
# letter of a string one letter forward

def encrypt (str)
  letters = "abcdefghijklmnopqrstuvwxyz"
  letter_1 = (str)[0].next
  letter_2 = (str)[1].next
  letter_3 = (str)[2].next

  if letter_1 == "aa"
   letter_1 = "a"
  end

  if letter_2 == aa
   letter_2 = "a"
  end

  if letter_3 == "aa"
   letter_3 = "a"
  end
  puts letter_1+letter_2+letter_3
end

def decrypt (str)
letters = "abcdefghijklmnopqrstuvwxyz"

letter_1= ((str)[0].ord-1).chr
letter_2= ((str)[1].ord-1).chr
letter_3= ((str)[2].ord-1).chr

if letter_1 == "`"
 letter_1 = "z"
end

if letter_2 == "`"
 letter_2 = "z"
end

if letter_3 == "`"
 letter_3 = "z"
end

puts letter_1+letter_2+letter_3
end

decrypt ("bag")

def encrypt (str)
  string_to_return = ""
  str.length


encrypt 



def encrypt (str)
  string_to_return = ""
  str.length
    while str.length > 0
      str = str.next
  end
end

encrypt "t"


def encrypt (str)
  string_to_return = ""
  times = str.length
    while times > 0
      current_char = str[0]
      string_to_return << current_char.next
      add_next = current_char[1]
      
    end
end

encrypt "ertyuio"


What is implicit vs explicit returns?

If looping through a string or an array

until

puts "test: #{test}"


def encrypt (str)
  string_to_return = ""
  times = str.length
    while times > 0
      current_char = str[0]
      current_char.next
      add_next = current_char[+1]
      return string_to_return
    end
end

encrypt "ertyuio"