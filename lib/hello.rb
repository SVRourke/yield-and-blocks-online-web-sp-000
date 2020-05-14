def hello_t(array)
  if block_given?
    i = 0
    
    while i < array.length
      yield array[i]
      i = i + 1
    end
  else
    puts "Hey! No block was given!"
  end
  array
end

# call your method here!

hello_t(['tom', "tim", "jim"]) do |name|
  if name.upcase.start_with?("T")
    puts "Hi, #{name}"
  end
  
end