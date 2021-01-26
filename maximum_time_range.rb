def maximum_time_range(array)
  # write your code here
  events=[]
  result=[]
  i=0
  loop do
  events << [array[i],array[i+1]]
  i+=2
  break if array[i].nil?
  end
  
  events.sort!
  p_start=events[0].slice(0)
  p_stop=events[0].slice(1)
  j=1
  loop do
    if j > events.size-1
      break 
    end
    if events[j].slice(0) > p_stop then
      result << [p_start,p_stop]
      p_start= events[j].slice(0)
      p_stop=events[j].slice(1)
      j+=1
      next
    end
    if events[j].slice(0) < p_stop && events[j].slice(1) > p_stop then
      p_stop=events[j].slice(1)
      j+=1
      next
    end
    if events[j].slice(1) < p_stop then
      j+=1
      next
    end
    if events[j].slice(0) > p_stop then
      result << [events[j].slice(0),events[j].slice(1)]
      p_start= events[j].slice(0)
      p_stop=events[j].slice(1)
      j+=1
    end
  end
  result << [p_start, p_stop]
  result.flatten! if result.size == 1
  result
  end
  
p maximum_time_range([10, 18, 4, 6, 14, 16, 5, 8])
# => [[4, 8], [10, 18]]