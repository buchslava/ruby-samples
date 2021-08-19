def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three do |number| puts number * 10 end

say_something = -> { puts "This is a lambda" }
say_something.call

times_two = ->(x) { x * 2 }
times_two.call(10)
