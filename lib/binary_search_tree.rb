require_relative 'tree_node'

class BinarySearchTree
  attr_accessor :root

  def insert(score, title)
    new_node = TreeNode.new(score, title)

    return set_root(new_node) if root.nil?

    current_node = root
    current_depth = 0

    until current_node.movie_score == score
      if score < current_node.movie_score
        current_node.left = new_node if current_node.left.nil?
        current_node = current_node.left
      elsif score > current_node.movie_score
        current_node.right = new_node if current_node.right.nil?
        current_node = current_node.right
      end

      current_depth += 1
    end

    current_depth
  end

  def include?(score)
    node = search_or_find_parent_for(score)
    score == node.movie_score
  end

  private

  def set_root(node)
    @root = node
    0
  end

  def search_or_find_parent_for(score)
    current_node = @root
    previous_node = nil

    until current_node.nil? || current_node.movie_score == score
      previous_node = current_node
      if score <= current_node.movie_score
        current_node = current_node.left
      elsif score >= current_node.movie_score
        current_node = current_node.right
      end
    end

    return previous_node if current_node.nil?
    current_node
  end

end
