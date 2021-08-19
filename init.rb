class Foo
  A = 10

  def initialize(aName)
    @myname = aName
  end

  def get_name
    return @myname
  end

  class Y
  end
end

f = Foo.new("bar")
puts(f.inspect)
ff = Foo::Y.new
puts(ff.inspect)
