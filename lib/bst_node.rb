class BSTNode
  attr_accessor :left, :right, :parent, :value
  def initialize(value = nil, parent = nil)
    @value = value
  end

  def addChild(value)
    if value > self.value
      if self.right
        self.right.addChild(value)
      else
        self.right = BSTNode.new(value, self)
      end
    else
      if self.left
        self.left.addChild(value)
      else
        self.left = BSTNode.new(value, self)
      end
    end
  end


end
