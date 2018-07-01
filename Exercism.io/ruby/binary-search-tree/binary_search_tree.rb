module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Binary Tree
class Bst
  attr_accessor :root, :left, :right
  def initialize(root = nil)
    @root = root
  end

  def data
    @root
  end

  def insert(data)
    if @root < data
      return @right = Bst.new(data) if @right.nil?
      @right.insert(data)
    elsif @left.nil?
      @left = Bst.new(data)
    else
      @left.insert(data)
    end
  end

  def each
    return enum_for(:each) unless block_given?
    @left.each { |n| yield n } if @left
    yield @root
    @right.each { |n| yield n } if @right
  end
end
