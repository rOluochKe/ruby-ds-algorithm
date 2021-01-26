class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  def insert(node)
    #your code here
    parent = nil
    if @root.nil?
      @root = node
    else
      current = @root
      until current.nil? do
        parent = current
        if node.data < current.data
          current = current.left
        elsif node.data > current.data
          current = current.right
        end
      end
      if parent.data > node.data
        parent.left = node
      else
        parent.right = node
      end
    end
  end

  def pre_order(node = @root)
    #implementation from the previous challenge
    if node == nil
      return ''
    end
  
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"