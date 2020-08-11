require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test
  def setup
    @tree = BinarySearchTree.new
  end

  def test_that_it_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_it_has_attribute
    assert_nil @tree.root
  end
end
