# Create method that searches through an existing array

arr = [20, 40, 60, 80, 100]
def look_for_array(arr, h)
  i = 0
    while i < arr.length
      if arr[i] == h
        return i
   end
   i+= 1
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

## Figuring out based on Internet research...
#def fib_num(n)
#    return  n  if n <= 1 
#    fib_num( n - 1 ) + fib_num( n - 2 )
#end 
#p fib_num(7)

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

fib(100).include?(218922995834555169026)

# Release 2
# Bubble sorting method
# Conceptually, it was easiest for me to watch a video I found of
# someone going through how to set up this method. I'm very visual
# and also, it helps to listen to concepts out loud with that visual.
# As with most of the new methods/techniques we're learning, I tend
# to feel a bit stupid. I wonder if I'll ever be able to figure this
# out on my own without spending hours upon hours of trial and error.


def bubble_sort(arr)
  n = arr.length
  loop do
    # [1, 4, 1, 3, 4, 1, 3, 3]
    # [1, 1, 4, 3, 4, 1, 3, 3]
    # [1, 1, 3, 4, 4, 1, 3, 3]
    # [1, 1, 3, 4, 4, 1, 3, 3]
    # [1, 1, 3, 4, 1, 4, 3, 3]
    # [1, 1, 3, 4, 1, 3, 4, 3]
    # [1, 1, 3, 4, 1, 3, 3, 4]
    swapped = false
    
    (n-1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if not swapped
  end
  p arr
end

arr = [1, 4, 1, 3, 4, 1, 3, 3]
bubble_sort(arr)