class A
  attr_accessor :arr

  def initialize
    @arr = [1, 2, 3, 4, 5]
    puts with_select.inspect, without_select.inspect
  end

  def with_select
    @arr.collect { |v| v if v.even? }.select(&:itself)
  end

  def without_select
    @arr.collect { |v| v if v.even? }
  end

end

a = A.new

# Result is the following:
# [2, 4]
# [nil, 2, nil, 4, nil]
# More: https://www.rubyguides.com/2020/04/self-in-ruby/