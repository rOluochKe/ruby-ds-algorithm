class Node
  attr_reader :data
attr_accessor :left, :right

def initialize data
  @data = data
end
end
# helper function
def array_to_tree(array, i = 0)
  # use your function from the previous challenge
  return nil if i >= array.length || array[i] == 0
node = Node.new(array[i])
node.left = array_to_tree(array, 2*i+1)
node.right = array_to_tree(array, 2*i+2)
node
end
# helper function
def height_left(root, i=0)
  return i if root == nil
  height_left(root.left, i += 1)
end
def height_right(root, i=0)
  return i if root == nil
  height_right(root.right, i += 1)
end
def balanced_tree?(array)
root = array_to_tree(array, 0)
balanced?(root)
end
def balanced? (node)
return true if node.nil?
# calculate left subtree's height
left_height = height_left(node.left)
# calculate right subtree's height
right_height = height_right(node.right)
# if the difference between right and left height greater than 1, it's imbalanced
return false if (left_height - right_height).abs > 1
# Are the left and right subtree balanced?
balanced?(node.left) && balanced?(node.right)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true