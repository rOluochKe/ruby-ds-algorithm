# frozen_string_literal: true

# Given a list of numbers, can you find all the pairs of numbers whose sum equals k?

def find_pairs(array, k)
  # write your code here
  result = []
  array.each do |i|
    array.each do |j|
      temp =[]
      next unless i + j == k && array.index(j) > array.index(i)

      temp.push(i)
      temp.push(j)
      result.push(temp)
    end
  end
  result
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]