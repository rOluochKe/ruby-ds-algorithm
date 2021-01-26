def sum(number)
  # Your code here
  if number == 1
    return number
  end

  number + sum(number - 1)
end

puts sum(4)
puts sum(10)