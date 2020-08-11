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

  def test_root_attribute_can_be_set_after_instantiation
    @tree.root = 'root'

    assert_equal 'root', @tree.root
  end
end
