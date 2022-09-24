require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = *list
  end

  def each
    @i = 0
    while @i < @list.length
      puts @list[@i]
      @i += 1
    end
  end
end
