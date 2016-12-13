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
