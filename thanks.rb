def thank(arg, &block)
  yield arg
end

proc = Proc.new do|name|
   puts "Thank you #{name}"
end

thank("God", &proc)
