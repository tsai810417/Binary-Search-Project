# There are many ways to implement these methods, feel free to add arguments
# to methods as you see fit, or to create helper methods.

require 'bst_node'
require 'byebug'

class BinarySearchTree
  attr_accessor :root
  def initialize
    @root = nil
  end

  def insert(value)
    if self.root == nil
      self.root = BSTNode.new(value)
    else
      self.root.addChild(value)
    end
  end

  def find(value, tree_node = @root)
    if value > tree_node.value
      if tree_node.right
        if  tree_node.right.value == value
          return tree_node.right
        else
          find(value, tree_node.right)
        end
      else
        return nil
      end
    else
      if tree_node.left
        if tree_node.left.value == value
          return tree_node.left
        else
          find(value, tree_node.left)
        end
      else
        return nil
      end
    end
  end

  def delete(value)
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
  end

  def depth(tree_node = @root)
  end

  def is_balanced?(tree_node = @root)
  end

  def in_order_traversal(tree_node = @root, arr = [])
  end


  private
  # optional helper methods go here:

end
