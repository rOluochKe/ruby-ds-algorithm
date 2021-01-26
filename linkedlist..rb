# Start with your code from last challenge.
class LinkedList
  attr_reader :list, :ind
  attr_writer :list, :ind
  attr_accessor :list, :ind
  def initialize
    $ind = 0
    $list = []
    $ind = $list.length
  end
  
  def add(number)
    $list[$ind]=number
    $ind = $ind+1
  end

  def get(index)
    $list[index]
  end
  def add_at(index, item)
    if $list.length-1<index
      $list[index]=item
      for i in 0..index-1
        if i==index-1
          $list[i]=item
          break
        end
        $list[i]=nil
      end
    else
      for i in ($list.length-1).downto(0)
        if i==index
          $list[i+1]=$list[i]
          $list[i]=item
          break
        end
        $list[i+1]=$list[i];
      end
    end
  end
  def remove(index)
    if $list.length-1<index
      
    else
      length = $list.length
      for i in index..(length-1)
        if (i==index && i==length-1)
          puts "hini1"
          $list[i]=nil
          break
        elsif i==length-1
          puts "hini2"
          $list[i]=nil
        else
          $list[i]=$list[i+1]
        end
      end
    end
  end
end


list = LinkedList.new

list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)

puts list.get(2)
# => 11

puts list.get(3)
# => 5