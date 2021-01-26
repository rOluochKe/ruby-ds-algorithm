# frozen_string_literal: true

# In Insertion Sort Part 1, you sorted one element in the array. Using the same approach
# repeatedly, can you sort an entire unsorted array?

def sort_itself(array)
  (1...array.length).each do |i|
    value_to_insert = array[i]
    j = i - 1
    while j >= 0 && value_to_insert < array[j]
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = value_to_insert
    puts array.join(' ')
  end
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9