def leftmost_nodes_sum(array)
  # your code here
  i=0
  total = 0
  total += array[0]
  until i == array.length do
    i = i * 2 + 1
    total += array[i].to_i
  end
  return total
end

puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
# => 11