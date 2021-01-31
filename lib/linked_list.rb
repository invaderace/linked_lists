require_relative 'node.rb'

# respresents the full list
class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  #append(value) adds a new node containing value to the end of the list
  def append(value)
    return @head = Node.new(value) if @head.nil?

    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
  end

  #prepend(value) adds a new node containing value to the start of the list
  def prepend(value)
    return @head = Node.new(value) if @head.nil?

    list = @head
    @head = Node.new(value, list)
  end
  
  #size returns the total number of nodes in the list
  def size
    current_node = @head
    count = 0
    while current_node != nil
      current_node = current_node.next_node
      count += 1
    end
    count
  end  
  #head returns the first node in the list
  def head
    if @head.nil?
      nil
    else
      @head.value
    end
  end
  
  #tail returns the last node in the list
  def tail
    if head.nil?
      nil
    else
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.value
    end
  end
  
  #at(index) returns the node at the given index
  
  #pop removes the last element from the list
  
  #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
  
  #find(value) returns the index of the node containing value, or nil if not found.
  
  #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil

  #Extra Credit
  #insert_at(value, index) that inserts the node with the provided value at the given index
  
  #remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)
end