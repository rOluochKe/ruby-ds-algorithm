def weighted_graphs(matrix)
  # write your code here
  result=Array.new(matrix.size){0}
  oth=[]
  matrix[0].each_with_index { |n, index| result[index]=1 if n > 0 }
  result.each_with_index {|n,index| oth << index if n > 0}
  
  for i in 1..result.size-1 do
    for j in 0..oth.size-1 do
      if result[i]==0
        result[i]= 2 if matrix[oth[j]][i]!=0 
      end
    end
  end
  result
end

p weighted_graphs([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]