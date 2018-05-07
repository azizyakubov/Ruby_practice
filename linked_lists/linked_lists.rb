class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
      @value = value
      @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = Node.new
    @tail = @head

  end

  def append(value)  #adds a new node to the end of the list
    appended_node = Node.new(value)
    if (@head == nil)
      @head = appended_node
      @tail = @head
    else
      @tail.next_node = appended_node
      @tail = appended_node
    end
  end

  def prepend(value)     #adds a new node to start of list
    prepended_node = Node.new(value)
    if (@head == nil)
      @head = prepended_node
      @tail = @head
    else
      prepended_node.next_node = @head
      @head = prepended_node
    end
  end

  def size  #returns total number of nodes in the list
    current_node = @head
    i = 0
    until current_node == nil
      current_node = current_node.next_node
      i+= 1
    end
    return i
  end

  def head #return first node in the LinkedList
    @head.value
  end

  def tail  #return last node in the LinkedList
    @tail.value
  end

  def at(index)
    if(index > self.size)
      puts "Index does not exist"
      nil
    end

    i = @head
    1.upto(index) do
      i = i.next_node
    end

    return i
  end

  def pop   #remove tail node from LinkedList
    if @head == nil
      puts "List is empty. nothing to remove."
      nil
    elsif @head == @tail
      removed_node = @head
      @head = nil
      @tail = nil
      puts "Node #{removed_node.value} deleted."
    else
      temp_tail = @head
      until temp_tail == @tail #do
        temp_tail = temp_tail.next_node
      end
      removed_node = @tail
      @tail = temp_tail
      puts "Node #{removed_node} deleted."
    end
  end

  def contains?(data)
    i = @head
    while i.next_node != nil
      if i.value == data
        return true
        puts "true"
      end
      i = i.next_node
    end
    return false
    puts "false"
  end

  def find(data)    #return the index of the node containing the data, nil if not found
    return nil if @head ==nil
    i = @head
    index_counter = 0
    loop do
      if i.value == data
        return index_counter
        puts "Data is located at index #{index_counter}."
      elsif i.next_node == nil
        return nil
      else
        i = i.next_node
        index_counter += 1
      end
    end
  end

  def to_s  #represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil

    string = ""
    node = @head
    until node == nil
      string = string + "(#{node.value}) -> "
      node = node.next_node
    end
    string += "nil"
    return string
  end


end
