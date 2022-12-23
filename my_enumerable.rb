module MyEnumerable
  def any?
    @list.each do |n|
      return true if yield n
    end
    false
  end

  def all?
    @list.each do |n|
      return false unless yield n
    end
    true
  end

  def filter
    filtered_list = []
    @list.each do |n|
      filtered_list << n if yield n
    end
  filtered_list
  end
end