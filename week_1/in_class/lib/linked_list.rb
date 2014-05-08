class LinkedList
  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
      @value = value
      @next_node = next_node
    end
  end

  attr_accessor :head

  def append(value)
    if head
      last_node.next_node = Node.new(value)
    else
      self.head = Node.new(value)
    end
  end

  def last_node
    node = self.head
    until node.next_node.nil?
      node = node.next_node
    end
    node
  end

  def get(index)
    node = self.head
    index.times do 
      node = node.next_node 
    end
    node.value
  end

  def prepend(value)
    self.head = Node.new(value, head)
  end

  def insert_before(index, value)
    if index == 0
      self.prepend(value)
    else
      node = self.head
      (index-1).times do 
        raise Exception, "Out of Bounds" if node == nil
        node = node.next_node 
      end
      new_next_node = node.next_node
      node.next_node = Node.new(value, new_next_node)
    end
  end
end
