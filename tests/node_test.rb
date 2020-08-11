require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

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
    assert_equal nil, @node.left
    assert_equal nil, @node.right
  end
end
