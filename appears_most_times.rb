def appears_most_times(array)
  # write your code here
  map = Hash.new
  max = 1
  array.each do |e|
    if map.has_key?(e)
      map[e]+=1
    else
      map[e]=1
    end

  end
  map.key(map.values.max)
end

puts appears_most_times([1, 2, 3, 1, 5])
# => 1

puts appears_most_times([23, 43, 67, 88, 42, 35, 77, 88, 99, 11])
# => 88

puts appears_most_times([4376, -345, -345, 4376, -345, 84945, 4376, -345, -26509, 4376, 84945, 84945, -26509, 896341, 4376])
# => 4376