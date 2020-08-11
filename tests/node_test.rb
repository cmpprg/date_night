require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_that_it_exists
    node = TreeNode.new(44, 'Ryan\'s Revenge')

    assert_instance_of TreeNode, node
  end
end
