def foo
  {
    a: "1",
    b: "2",
  }
end

c = foo
puts(c)

send(:puts, "hello")

def bar
  <<QUERY
  SELECT * FROM tabs
QUERY
end

d = bar

puts d
