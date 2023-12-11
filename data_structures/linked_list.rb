require_relative "./node"

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
