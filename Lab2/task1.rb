puts "Input numbers:"
list = gets.strip.split

newList = Array.new
list.each{|x| newList.append(x.to_i)}

 def min(list)
	min = list[0]
	list.each{|x| min = x if x < min}
	min
end

def max(list)
	max = list[0]
	list.each{|x| max = x if x > max}
	max
end

def sum(list)
	sum = 0
	list.each{|x| sum = sum + x}
	sum
end

def mult(list)
	mult = 1
	list.each{|x| mult = mult * x}
	mult
end

puts "Min: #{min(newList)}"
puts "Max: #{max(newList)}"
puts "Sum: #{sum(newList)}"
puts "Mult: #{mult(newList)}"