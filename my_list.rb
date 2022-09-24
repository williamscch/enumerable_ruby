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

# # Create our list
# irb> list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

# # Tests #all?
# irb> list.all? {|e| e < 5}
# => true
# irb> list.all? {|e| e > 5}
# => false

# # Tests #any?
# irb> list.any? {|e| e == 2}
# => true
# irb> list.any? {|e| e == 5}
# => false

# # Tests #filter
# irb> list.filter {|e| e.even?}
# => [2, 4]
