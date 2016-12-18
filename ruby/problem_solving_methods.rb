# Create method that searches through an existing array

arr = [20, 40, 60, 80, 100]
def look_for_array(arr, h)
  index = 0
    while index < arr.length
      if arr[index] == h
        return index
   end
   index += 1
end
end

p look_for_array(arr, 60)

arr = [20, 40, 60, 80, 100]

def look_for_array(arr, h)
  arr.each_index do 
    |number| if arr[number] == h
      return number
  end 
end
end

p look_for_array(arr, 80)


## Release 1

def fib_num(n)
    return  n  if n <= 1 
    fib_num( n - 1 ) + fib_num( n - 2 )
end 
p fib_num(7)


def fib(n)
  arr = [0, 1]
     i = 2
  while i < n
    arr << arr[-1] + arr[-2]
  i += 1  
  end
  p arr
end
fib(16)

