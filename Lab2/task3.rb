amount = ARGV[0].to_i

puts "Input numbers:"

def readList(list, amount)
	amount.times do |i|
		tmp =[]
		tmp.push(STDIN.gets.to_i)
		list.concat(tmp)
	end
end

list = []
readList(list, amount)

p list