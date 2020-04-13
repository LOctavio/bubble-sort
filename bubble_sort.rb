def bubble_sort(arr)
  swap = false
  until swap do
  for i in 0...(arr.length-1)
    swap = false
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      swap = true
    else
      break
    end
  end
end

  arr
end


puts bubble_sort([3,2,1])