def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  # Your code here
  mid=((min_interval + max_interval)/2)
  if mid * mid == number
    return mid
  else
  
  if mid * mid > number
    max_interval=mid
    return sqrt_recursive(number,min_interval, max_interval )
  else
    min_interval=mid
    return sqrt_recursive(number,min_interval,max_interval)
  end
 end
end

puts sqrt(25)
puts sqrt(7056)
