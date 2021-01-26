# How much faster is Quicksort than Insertion Sort in practice? Compare the running time of the two algorithms by
# counting how many swaps or shifts each one takes to sort an array, and output the difference. You can modify your
# previous sorting code to keep track of the swaps.

def insertion_sort(array)
  # write your code here
  (1...array.length).each do |i|
    value_to_insert = array[i]
    j = i - 1
    while j >= 0 && value_to_insert < array[j]
      array[j + 1] = array[j]
      j -= 1
      $insertion_sort_counter += 1
    end
    array[j + 1] = value_to_insert
  end
  array
end

def partition(array, begin_index, end_index)
  pivot = array[end_index]
  j = begin_index
  (begin_index...end_index).each do |i|
    next unless array[i] < pivot
    array[i], array[j] = array[j], array[i]
    j += 1
    $quick_sort_counter += 1
  end
  array[end_index], array[j] = array[j], array[end_index]
  $quick_sort_counter += 1
  j
end

def advanced_quicksort(array, begin_index = 0, end_index = array.length - 1)
  return unless begin_index < end_index

  pivot = partition(array, begin_index, end_index)
  advanced_quicksort(array, begin_index, pivot - 1)
  advanced_quicksort(array, pivot + 1, end_index)
end

def quicksort_running_time(array)
  $quick_sort_counter = 0
  $insertion_sort_counter = 0
  insertion_sort(array.clone)
  advanced_quicksort(array.clone)
  $insertion_sort_counter - $quick_sort_counter
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1
