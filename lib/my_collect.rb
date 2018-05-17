def my_collect(list)
  if block_given?
    n=0
    output=[]
    while n<list.length do
      output.push(yield(list[n])) ## yield is an active block which can be pushed into another obj
      n = n + 1
    end
    return output
  else
    return nil
  end
end

students = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(students) do |student|
  student.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(languages) do |lang|
  lang.upcase
end
