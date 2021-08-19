class String
  def margin
    arr = self.split("\n")
    arr.map { |x| x.sub!(/\s*\|/, "") }
    str = arr.join(" ")
    self.replace(str)
  end
end

# str = <<end.margin
#   |Foo
#   |bar
#   |baz
# end

# puts str

str = "|Foo\n|bar\n|baz"
puts str.margin
