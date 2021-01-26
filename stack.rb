class Stack
  attr_accessor :stack
  def initialize
    @stack = []
  end
  
  def push(number)
    # your code here
    @stack.push(number)
  end
  
  def pop
    # your code here
    @stack.pop
  end
  
  def min
    # your code here
    @stack.min
  end

end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3