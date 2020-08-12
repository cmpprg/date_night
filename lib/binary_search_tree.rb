require_relative 'tree_node'

class BinarySearchTree
  attr_accessor :root

  def insert(score, title)
    new_node = TreeNode.new(score, title)

    return set_root(new_node) if root.nil?

    parent = find_node_or_parent_for(score)
    return parent.depth if score == parent.movie_score

    new_node.depth = parent.depth + 1
    score < parent.movie_score ?
      parent.left = new_node :
      parent.right = new_node

    new_node.depth
  end

  def include?(score)
    node = find_node_or_parent_for(score)
    score == node.movie_score
  end

  def depth_of(score)
    node = find_node_or_parent_for(score)
    return node.depth if node.movie_score == score
  end

  private

  def set_root(node)
    @root = node
    @root.depth
  end

  def find_node_or_parent_for(score)
    current_node = @root
    previous_node = nil

    until current_node.nil? || current_node.movie_score == score
      previous_node = current_node
      score <= current_node.movie_score ?
        current_node = current_node.left :
        current_node = current_node.right
    end

    return previous_node if current_node.nil?
    current_node
  end

end
