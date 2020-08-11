require_relative 'tree_node'

class BinarySearchTree
  attr_accessor :root

  def insert(score, title)
    node = TreeNode.new(score, title)
    @root = node
  end
end
