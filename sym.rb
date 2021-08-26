# http://rubydev.ru/2011/01/ruby_symbols/

def foo(x)
  puts x
end

puts foo(:bar)

y = ["hello", "world"].map &:capitalize
puts y

z = ["hello", "world"].map { |x| x.capitalize }
puts z
