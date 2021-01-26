def exact_sum?(k, coins)
  #write your code here
  coins.sort!
  sum=0
  for i in 0..coins.size-1
  puts coins[i]
    sum+=coins[i]
  end
  if k == sum
  return true
  elsif
  k > sum
  return false
  end
  puts diff= sum - k
  return true if coins.include? diff


  for i in 0..coins.size-1 
    for j in i+1..coins.size-1
      if coins[i] + coins[j] == diff
      return true
      end
    end
  end

  for i in 0..coins.size-1 
    for j in i+1..coins.size-2
      if coins[i] + coins[j] + coins[j+1] == diff
      return true
      end
    end
  end
  return false
#exact_sum?(k,coins)
end

puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

puts exact_sum?(11, [1, 5, 9, 13])
# => false
