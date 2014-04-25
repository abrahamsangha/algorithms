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
    if @head
      last_node.next_node = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def last_node
    node = @head
    until node.next_node.nil?
      node = node.next_node
    end
    node
  end

  def get(index)
    node = @head
    index.times do 
      node = node.next_node 
    end
    node.value
  end

  def prepend(value)
    @head = Node.new(value, head)
  end

  def insert_before(index, value)
  end
end
