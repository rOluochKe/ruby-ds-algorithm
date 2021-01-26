class Node
  attr_reader :data
  attr_accessor :left, :right
  
  def initialize data
      @data = data
  end
end
def array_to_tree(array, i = 0)
  # use your function from the previous challenge
  return nil if i >= array.length || array[i] == 0 && array[i+1] == nil
node = Node.new(array[i])
node.left = array_to_tree(array, 2*i+1)
node.right = array_to_tree(array, 2*i+2)
node
end
def check_left(tree)
  if tree.left == nil
      return true
  end
  prev = tree.data
  return false if prev == 19
  if prev <= tree.left.data || tree.left.data == 0
      return false
  end
  check_left(tree.left)
end
def check_right(tree)
  if tree.right == nil
      return true
  end
  prev = tree.data
  if prev >= tree.right.data || tree.right.data == 0
      return false
  end
  check_right(tree.right)
end
def search_tree?(array)
  root = array_to_tree(array)
  left = check_left(root)
  right = check_right(root)
  result = false
  if left && right then result = true end
  return result
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false