# frozen_string_literal: true

require_relative 'node.rb'

# respresents the full list
class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = head
  end

  # ppend(value) adds a new node containing value to the end of the list
  def append(value)
    return @head = Node.new(value) if @head.nil?

    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node.next_node = Node.new(value)
  end

  # prepend(value) adds a new node containing value to the start of the list
  def prepend(value)
    return @head = Node.new(value) if @head.nil?

    list = @head
    @head = Node.new(value, list)
  end

  # size returns the total number of nodes in the list
  def size
    current_node = @head
    count = 0
    until current_node.nil?
      current_node = current_node.next_node
      count += 1
    end
    count
  end

  # tail returns the last node in the list
  def tail
    if @head.nil?
      nil
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node
    end
  end

  # at(index) returns the node at the given index
  def at(index)
    current_index = 0
    current_node = @head

    until current_index.equal? index
      current_node = current_node.next_node unless current_node.nil?
      current_index += 1
    end

    current_node.nil? ? nil : current_node
  end

  # pop removes the last element from the list
  def pop
    current_node = @head
    previous_node = nil

    return if current_node.nil?

    until current_node.next_node.nil?
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = nil
  end

  # contains?(value) returns true if the passed in value is in the list and otherwise returns false.
  def contains?(value)
    unless @head.nil?
      current_node = @head
      until current_node.nil?
        return true if current_node.value == value

        current_node = current_node.next_node
      end
    end
    false
  end

  # find(value) returns the index of the node containing value, or nil if not found.
  def find(value)
    current_index = 0
    current_node = @head
    until current_node.nil?
      return current_index if current_node.value == value

      current_node = current_node.next_node
      current_index += 1
    end

    nil
  end

  # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s
    string = ''
    current_node = @head
    until current_node.nil?
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end

    string + 'nil'
  end

  # Extra Credit
  # insert_at(value, index) that inserts the node with the provided value at the given index
  def insert_at(value, index)
    temp = at(index)
    current_node = @head
    current_index = 0

    until current_index.equal? index - 1
      current_node = current_node.next_node unless current_node.nil?
      current_index += 1
    end

    current_node.next_node = Node.new(value, temp) unless current_node.nil?
  end

  # remove_at(index) that removes the node at the given index.
  # (You will need to update the links of your nodes in the list when you remove a node.)
  def remove_at(index)
    current_node = @head
    current_index = 0

    until current_index.equal? index - 1
      current_node = current_node.next_node unless current_node.nil?
      current_index += 1
    end

    current_node.next_node = at(index + 1) unless current_node.nil?
  end
end
