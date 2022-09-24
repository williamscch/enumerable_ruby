module MyEnumerable
  def all?
    @list.each do |e|
      return false unless yield(e)
    end
    true
  end

  def any?
    @list.each do |e|
      return true if yield(e)
    end
    false
  end

  def filter
    result = []
    @list.each do |e|
      result.push(e) if yield(e)
    end
    result
  end
end
