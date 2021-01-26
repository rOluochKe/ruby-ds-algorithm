def connected_graph?(graph)
  # write your code here
  key = 0
  visited = [key]
  count = 0
  while !visited[count].nil?
    count+=1
    size = visited.size
    
    graph[key].each do |e|
      unless visited.include? e
        visited.push(e)
      end
    end
    
    key = visited[count]
  end
  visited
  visited.size == graph.size
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true