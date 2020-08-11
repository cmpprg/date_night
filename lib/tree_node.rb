class TreeNode
  attr_reader :movie_score, :movie_title
  attr_accessor :left, :right
  def initialize( score, title)
    @movie_score = score
    @movie_title = title
  end
end
