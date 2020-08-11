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

  def test_it_can_insert_a_node_into_root
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    root_node = @tree.root

    assert_instance_of TreeNode, root_node
    assert_equal 61, root_node.movie_score
    assert_equal "Bill & Ted's Excellent Adventure", root_node.movie_title
  end

  def test_after_root_is_set_it_can_other_nodes_to_left_and_right
    skip
    @tree.insert(61, "Bill & Ted's Excellent Adventure")
    root_node = @tree.root

    @tree.insert(16, "Johnny English")

    assert_equal "Johnny English", root_node.left.movie_title
    assert_equal 16, root_node.left.movie_score

    @tree.insert(92, "Sharknado 3")

    assert_equal "Sharknado 3", root_node.right.movie_title
    assert_equal 92, root_node.right.movie_score

    @tree.insert(50, "Hannibal Buress: Animal Furnace")

    assert_equal "Hannibal Buress: Animal Furnace", root_node.left.right.movie_title
    assert_equal 50, root_node.left.right.movie_score
  end

  def test_it_can_return_the_depth_of_node_after_insertion
    skip
    assert_equal 0, @tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, @tree.insert(16, "Johnny English")
    assert_equal 1, @tree.insert(92, "Sharknado 3")
    assert_equal 2, @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end
end
