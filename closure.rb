# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

def call_proc(my_proc)
  count = 500
  my_proc.call
end

count = 1
my_proc = Proc.new { puts count }
# p() is a Kernel method it writes obj.inspect to the standard output.
p call_proc(my_proc) # What does this print?
