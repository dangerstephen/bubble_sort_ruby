def bubble_sort(arr)

  loop do
    swapped = false

    (arr.size-1).times do |current_val|
      if arr[current_val] > arr[current_val+1]
        arr[current_val], arr[current_val+1] = arr[current_val+1], arr[current_val]
        swapped = true
      end
    end
    break if !swapped
  end

arr
end

# OR you can do it this way
def bubble_sort(array)
      swapped = true
      length = array.length-1
      while swapped do
          i = 0
          swapped = false
          while i <length
              n = i +1
              if array[i] > array[n]
                  temp = array[i]
                  array[i]= array[n]
                  array[n] = temp
                  swapped = true
              end
             i+=1
          end
      end
      return array
end


# Or yet another using .each_cons(#or arguments)

def bubble_sort(arr)
   loop until arr.each_cons(2).with_index.none? do |(x, y), i|
       if x > y
           arr[i] = y
           arr[i + 1] = x
       end
   end
   p arr
end
