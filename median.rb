def median(a)
  # write your code here
 o = Array.new(15000) { 0 }
  a.each { |n| o[n] += 1 }
  (1...o.size).each do |i|
    o[i] += o[i - 1]
    return i if o[i] > a.size / 2
  end  
end

puts median([0, 1, 2, 4, 6, 5, 3])
# => 3