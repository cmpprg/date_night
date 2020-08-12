require 'minitest/autorun'
require 'minitest/pride'
require './lib/tree_node'

class NodeTest < Minitest::Test
  def setup
    @node = TreeNode.new(44, 'Ryan\'s Revenge')
  end

  def test_that_it_exists
    assert_instance_of TreeNode, @node
  end

  def test_it_has_attributes
    assert_equal 44, @node.movie_score
    assert_equal 'Ryan\'s Revenge', @node.movie_title
    assert_equal 0, @node.depth
    assert_nil @node.left
    assert_nil @node.right
  end

  def test_left_and_right_can_be_modified
    @node.left = 'left'
    @node.right = 'right'

    assert_equal 'left', @node.left
    assert_equal 'right', @node.right
  end
end
