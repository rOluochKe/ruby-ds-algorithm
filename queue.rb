# Start with your code from LinkedList challenge.
class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
      @value = value
    @next_node = next_node
  end
end


class Queue
  attr_accessor :front, :rear
  
  def add(number)
    # your code here
    begin
     @front = Node.new(number, @front)
      @rear=@front
      return
    end if !@front
    temp = Node.new(number)
    rear.next_node=temp
    @rear=temp
  end
  
  def remove
    # your code here
    return -1 if !@front
    temp=@front
    @front=temp.next_node
    return temp.value
  end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1