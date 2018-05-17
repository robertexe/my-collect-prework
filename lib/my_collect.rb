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

# students = ["Tim Jones", "Tom Smith", "Jim Campagno"]
# my_collect(students) do |student|
#   student.split(" ").first
# end
#
# languages = ['ruby', 'javascript', 'python', 'objective-c']
# my_collect(languages) do |lang|
#   lang.upcase
# end
