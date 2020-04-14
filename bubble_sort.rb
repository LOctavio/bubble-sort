def bubble_sort(arr)
  swap = false
  until swap
    swap = true
    (0...(arr.length - 1)).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = false
      end
    end
  end
  arr
end
puts bubble_sort([5, 7, 3, 1, 6, 7])
puts ''
def bubble_sort_by(arr)
  swap = false
  until swap
    swap = true
    (0...(arr.length - 1)).each do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swap = false
      end
    end
  end
  arr
end

puts bubble_sort_by(%w[hello hi ruby]) { |right, left| right.length <=> left.length }
