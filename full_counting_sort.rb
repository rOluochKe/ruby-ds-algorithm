def full_counting_sort(array)
  # write your code here
  result=[]
  nums=[]
  array.each { | x| nums<<x.to_i }
  nums.sort.uniq.each { |x|
  array.each { |y| result << y.split(" ").last if y.split(" ").first.to_i == x 
  }
  }
   result
end

p full_counting_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]