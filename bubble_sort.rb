def bubble_sort(arr)
  for i in 0...(arr.length-1)
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
  end
  arr
end


puts bubble_sort([3,2,1])