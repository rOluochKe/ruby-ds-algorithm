def graph(hash_graph)
  # write your code here
  curr_key = 0
    road = []
    
    while curr_key != 4
        hash_graph.each do |key, value|
          if key == curr_key
              road << curr_key
              curr_key = value[0]
              break
          end
      end
    end
    road << curr_key
  return road
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]
