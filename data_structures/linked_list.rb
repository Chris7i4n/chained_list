require_relative "./node"
require "byebug"

class LinkedList
  attr_reader :head

  def initialize 
    @head = nil
  end

  def invert_list
    current_node = @head
    previous_node = nil
    next_node = nil

    while current_node
      next_node = current_node.next_node
      current_node.next_node = previous_node
      previous_node = current_node
      current_node = next_node
    end

    @head = previous_node

    nil
  end

  def append(value)
    if head
      current_node = head
      current_node = current_node.next_node while current_node.next_node
      current_node.next_node = Node.new(value: value)
    else
      @head = Node.new(value: value)
    end
  end

  def find_node_by_value(value)
    current_node = @head

    while current_node
      return current_node if current_node.value == value

      current_node = current_node.next_node
    end
  end

  def delete_node_by_value(value)
    current_node = @head
    previous_node = nil
    next_node = nil

    while current_node
      if current_node == @head && value == current_node.value
        @head = current_node.next_node
        break
      end

      if current_node.next_node == nil && value == current_node.value
        previous_node.next_node = nil
      end
  
      previous_node.next_node = current_node.next_node if value == current_node.value

      previous_node = current_node
      current_node = current_node.next_node
    end
  end

  def to_s
    result = ''
    current_node = head
  
    while current_node
      result += "#{current_node.value} -> "
      current_node = current_node.next_node
    end
  
    result + 'nil'
  end
end
