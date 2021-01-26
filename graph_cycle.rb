def graph_cycle?(graph)
  curr_node = 0
  result = false
  while curr_node < graph.length
      graph[curr_node].each do |s|
          if graph[s] != nil
              graph[s].each do |value|
                  result = true if graph[curr_node].include?(value)
              end
          end
      end
      curr_node += 1
  end
return result
end

puts graph_cycle?({
0=>[2], 
1=>[4], 
2=>[0, 5, 3], 
3=>[5, 2], 
4=>[5, 1], 
5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
0=>[2], 
1=>[2], 
2=>[0, 1, 3, 4, 5], 
3=>[2], 
4=>[2]
})
# => false