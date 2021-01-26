# In the previous challenge, you wrote a 'partition' method to split an array into smaller and greater elements. This
# means you 'sorted' half the array with respect to the other half. Can you repeatedly use 'partition' to sort an
# entire array?

def simple_quicksort(array)
  left = []
  right = []
  pivot = [array.first]

  return [] if array.empty?

  quick_sort_partition(array, left, right)
  return pivot if (left + right).empty?

  result = simple_quicksort(left) + pivot + simple_quicksort(right)
  puts result.join(' ') unless result.empty?
  result
end

def quick_sort_partition(array, left, right)
  array.each do |i|
    right.push(i) if i > array.first
    left.push(i) if i < array.first
  end
end

p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10