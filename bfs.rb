def bfs(graph)
  # write your code here
  
  i = 0
  q = [0]
  loop do
    return q if i == q.size
    q += graph[q[i]] - q
    i += 1
  end
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]