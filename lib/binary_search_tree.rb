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
    if self.root.value == value
      self.root = nil
    else
      node = find(value)
      if value > node.parent.value
        if node.left.nil? && node.right.nil?
          node.parent.right = nil
        elsif node.left.nil?
          node.parent.right = node.right
        else
          new_node = left_most(node.right)
          new_node.parent.left = new_node.right
          new_node.parent = node.parent
          node.parent.right = new_node
        end
      else
        if node.left.nil? && node.right.nil?
          node.parent.left = nil
        elsif node.right.nil?
          node.parent.left = node.left
        else
          new_node = right_most(node.left)
          new_node.parent.right = new_node.left
          new_node.parent = node.parent
          node.parent.left = new_node

        end
      end
    end
  end

  # helper method for #delete:
  def maximum(tree_node = @root)
  def right_most(tree_node = @root)
    if tree_node.right
      right_most(tree_node.right)
    else
      return tree_node
    end
  end
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
