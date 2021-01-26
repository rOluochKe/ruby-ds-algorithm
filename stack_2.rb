# Start with your code from LinkedList challenge.
class Node
  attr_accessor :number, :next_node

  def initialize(number, next_node)
    @number = number
    @next_node = next_node
  end
end
  
class Stack
  def initialize
    @first = nil
  end
  
  def push(number)
    # your code here
    @first = Node.new(number, @first)
  end
  
  def pop
    # your code here
      raise "Stack is empty" if is_empty?
      number = @first.number
      @first = @first.next_node
      number
  end
  
  def is_empty?
    @first.nil?
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3