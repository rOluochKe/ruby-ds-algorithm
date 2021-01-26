def full_merge_sort(array)
  result =[]
  unfilter = f_merge_sort(array)
  print unfilter
  end

def f_merge_sort(array)
  # write your code here
  return array if array.length ==1
  middle = array.length / 2
  merge_sort(f_merge_sort(array[0...middle]), f_merge_sort(array[middle..-1]))
end

def merge_sort(array1, array2)
  # write your code here
  sorted_array = []
  i = 0
  j = 0

  while i < array1.size && j < array2.size
    if array1[i].split(' ')[0] <= array2[j].split(' ')[0]
      sorted_array << array1[i]
      i += 1
    else
      sorted_array << array2[j]
      j += 1
    end
  end

  if i < array1.size
    sorted_array.concat(array1[i..-1])
  end

  if j < array2.size
    sorted_array.concat(array2[j..-1])
  end

  sorted_array
end

full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
