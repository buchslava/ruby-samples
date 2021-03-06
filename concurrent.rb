require 'concurrent-edge'

array = [1, 2, 3, 4, 5]
channel = Concurrent::Channel.new
Concurrent::Channel.go do
  puts "Go 1 thread: #{Thread.current.object_id}"
  sleep 5
  channel.put(array[0..2].sum)
  puts 'Go 1 end'
end
Concurrent::Channel.go do
  puts "Go 2 thread: #{Thread.current.object_id}"
  sleep 3
  channel.put(array[2..4].sum)
  puts 'Go 2 end'
end
puts "Main thread: #{Thread.current.object_id}"
puts channel.take, channel.take
