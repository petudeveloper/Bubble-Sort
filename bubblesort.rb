# bubble sort algorithm
def bubble_sort(array)
  not_sorted = true
  while not_sorted
    index = 0
    not_sorted = false
    while index < (array.length - 1)
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        not_sorted = true
      end
      index += 1
    end
  end
  array
end

# case scenario given
arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
p bubble_sort(arr)

# sorted by algorithm
def bubble_sort_by(array)
  not_sorted = true
  while not_sorted
    index = 0
    not_sorted = false
    while index < (array.length - 1)
      if yield(array[index], array[index + 1]).positive?
        array[index], array[index + 1] = array[index + 1], array[index]
        not_sorted = true
      end
      index += 1
    end
  end
  array
end

# case scenario given
arr = bubble_sort_by(%w[hello hiya hey hi h]) do |left, right|
  left.length - right.length
end
  
p arr