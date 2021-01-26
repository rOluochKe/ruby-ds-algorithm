def index_match(array)
  # write your code here
  search(array,0,array.size-1)  
end

def search(array,start,stop)
  mid=((start + stop) / 2).floor
    return mid if array[mid] == mid
  return -1 if start>stop
  if array[mid] < mid
      search(array,mid+1,stop)
  elsif array[mid] > mid
      search(array,start,mid-1)
  end  
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0