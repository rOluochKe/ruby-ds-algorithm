# Given an array 'array' and a number 'p' in the first cell in the array, can you partition the array
# so that all elements greater than 'p' are to the right of it and all the numbers smaller than 'p' are to its left?

def partition(array)
  # write your code here
  left = []
  right = []
  array.each_with_index do |val, index|
    right.push(val) if val>array[0]
    left.push(val) if val<array[0]
  end
  left + [array[0]] + right
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]