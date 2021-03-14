amount = ARGV[0].to_i

puts "Input numbers:"

def readList(list, amount)
	amount.times do |i|
		list.insert(i, STDIN.gets.to_i)
	end
end

list = []
readList(list, amount)

p list