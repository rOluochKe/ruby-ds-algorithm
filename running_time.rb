# How many shifts does Insertion Sort take?

def running_time(array)
  # write your code here
  insertion_sort_time = 0
  (1...array.length).each do |i|
    value_to_insert = array[i]
    j = i - 1
    while j >= 0 && value_to_insert < array[j]
      array[j + 1] = array[j]
      j -= 1
      insertion_sort_time += 1
    end
    array[j + 1] = value_to_insert
  end
  insertion_sort_time
end

puts running_time([2, 1, 3, 1, 2])
# => 4