class Node
attr_accessor :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

  def data
   @data
  end

  def left
    @left
  end

  def right
    @right
  end

end


class BinarySearchTree
attr_accessor :data

  def initialize
    @root
    @counter = 0
    @tree = []
  end

  def root_node
    return nil until @root != nil
    Node.new(@root,Node.new(@root,Node.new(@root)),Node.new(@root,nil,Node.new(@root)))
  end

  def push(num)
    @root = num
    to_array
    @counter += 1
  end

  def count
    @counter
  end

  def to_array
    @tree << @root
      if @root == nil
        @tree = []
      end
     sorted_tree = @tree.sort_by do |n|
        n.to_i
      end
    sorted_tree
  end

  def include? (num)
    answer = false
    if @tree.include? (num)
      answer = true
    end
    answer
  end



end