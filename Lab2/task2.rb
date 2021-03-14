puts "Input numbers:"
list = gets.strip.split

newList = Array.new
list.each{|x| newList.append(x.to_i)}

puts "Min: #{newList.min}"
puts "Max: #{newList.max}"
puts "Sum: #{newList.sum}"
puts "Mult: #{newList.inject(:*)}"