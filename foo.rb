# section 1

class A
  attr_accessor :foo

  def initialize(foo)
    @foo = foo
  end

end

a1 = A.new(:bar)
a2 = A.new(nil)

h = { "a1" => a1, "a2" => a2 }

# section 2

[:a1, :a2, :a3].each do |key|
  if h[key.to_s] != nil
    puts h[key.to_s].foo
  else
    puts "#{key} is null or missing"
  end
end

