def depth_first_search(graph)
  walk(graph, 0, [])
 
end

def walk(graph, node, res)
#print res
  return if res.include?(node)
  res.push(node)

  for node in graph[node]
    walk(graph, node, res)
  end
  res
end

p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]