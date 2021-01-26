def hanoi_steps(number_of_discs)
  # your code here
  start = 1
  goal = 3
  
  def move(start, goal, n)
   peg = [1, 2, 3]
   peg.delete(start)
   peg.delete(goal)
   middle = peg[0]
   if (n>0)
     move(start, middle, n-1)
     puts  "#{start}->#{goal}\n"
     move(middle, goal, n-1)
   end
 end
 move(start, goal, number_of_discs)
end

hanoi_steps(2)
# => 1->2 
#    1->3 
#    2->3

hanoi_steps(3)
# => 1->3 
#    1->2
#    3->2
#    1->3
#    2->1
#    2->3
#    1->3

hanoi_steps(4)
# => 1->2
#    1->3
#    2->3
#    1->2
#    3->1
#    3->2
#    1->2
#    1->3
#    2->3
#    2->1
#    3->1
#    2->3
#    1->2
#    1->3
#    2->3