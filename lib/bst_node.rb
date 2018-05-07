class BSTNode
  attr_accessor :left, :right, :parent, :value
  def initialize(value = nil)
    @value = value
  end

  def addChild(value)
    if self.value > value
      if self.right
        self.right.addChild(value)
      else
        self.right = BSTNode.new(value)
      end
    else
      if self.left
        self.left.addChild(value)
      else
        self.left = BSTNode.new(value)
      end
    end
  end


end
