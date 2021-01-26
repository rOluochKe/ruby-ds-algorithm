def move(starting, goal)
  # your code here
  help_peg = get_last_peg(starting, goal)
  pegs = Array[starting, help_peg, goal]
  ans = ""
  ans = "#{starting}->#{help_peg} #{starting}->#{goal} #{help_peg}->#{goal}"
  ans
end
def get_last_peg(starting, goal)
  ans = -1
  for i in 0..2
    ans = i+1 if (i+1 != starting && i+1 != goal)
  end
  ans
end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
