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
ages = Array[1, 8, 9, 17, 6, 9, 5, 2]
puts bubble_sort(ages)

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
bubble_sort_by(%w[hi hello hey poor abcderf]) do |left, right|
  left.length - right.length
end
