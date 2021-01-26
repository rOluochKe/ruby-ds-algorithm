def binary_tree_height(array)
  # write your code here
  height(0,0,array)
end

def height(i,l,arr)
  return l if i >= arr.size
  [height(2 * i + 1, l + 1, arr), height(2 * i + 2, l + 1, arr )].max
end

puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3