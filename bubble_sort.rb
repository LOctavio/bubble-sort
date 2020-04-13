def bubble_sort(arr)
  swap = false
  until swap do
    swap = true
    for i in 0...(arr.length-1)
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swap = false
      end
    end
  end
  arr
end
puts bubble_sort([5,7,3,1,6,7])
puts ""
def bubble_sort_by(arr)
  swap = false
  until swap do
    swap = true
    for i in 0...(arr.length-1)
      if yield(arr[i],arr[i+1]) > 0
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swap = false
      end
    end
  end
  puts arr
end

bubble_sort_by(["hello","hi","ruby"]) { |right, left| right.length <=> left.length}
