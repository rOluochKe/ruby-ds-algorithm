def smallest_difference(array)
  # write your code here
  array.sort!
  result=0
  i=0
  j=1
  smallest=array.max
  loop do
   if array[j] - array[i] < smallest
      smallest=array[j] - array[i]
      result=[array[i],array[j]]
    end
    i+=1
    j+=1
    break if j > array.size-1
  end
  result  
end

p smallest_difference([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854])
# => [-20, 30]