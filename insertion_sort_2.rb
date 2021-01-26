# frozen_string_literal: true

# Given a sorted list of numbers with an unsorted number 'X' in the right-most spot,
# can you write some simple code to insert 'X' into the list so it remains sorted?
# Print the list every time a value is shifted, until the list is fully sorted. The goal of this
# challenge is to follow the correct order of insertion sort.

def insertion_sort(array)
  value_to_insert = array[array.size-1]
  j = array.size - 2
  while j >= 0 && value_to_insert < array[j]
    array[j + 1] = array[j]
    j -= 1
    puts array.join(' ')
  end
  array[j + 1] = value_to_insert
  puts array.join(' ')
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9