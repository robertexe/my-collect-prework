def my_collect(list)
  if block_given?
    n=0
    output=[]
    while n<list.length do
      yield list[n]
      output << list[n]
      n = n + 1
    end
    return output
  else
    return nil
  end
end

# array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
# my_collect(array) do |name|
#   name.split(" ").first
# end
#
# languages = ['ruby', 'javascript', 'python', 'objective-c']
# my_collect(languages) do |lang|
#   lang.upcase
# end
