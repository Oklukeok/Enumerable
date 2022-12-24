require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list.to_a
  end

  def each
    yield(@list)
  end
end

list = MyList.new(1, 2, 3, 4, 6, 7, 8, 9, 10)
puts(list.any? { |num| num == 3 })

puts(list.all? { |e| e == 3 })

print list.filter(&:even?)
