#contains a #value method and a link to the #next_node, set both as nil by default.
class Node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
  
  def value
  end

  def next_node
  end
end