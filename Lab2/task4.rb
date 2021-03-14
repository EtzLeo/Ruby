command = ARGV[0]

def readFile(path)
	file = File.open(path)
	list = file.read.strip.split.map{|x| x.to_i}
end

def readList(list, amount)
	amount.times do |i|
		list.insert(i, STDIN.gets.to_i)
	end
end


case command
when "-h"
	puts "Способы ввода списка:\n1 n - Ввод вручную, где n - количество элементов списка
		\n2 path - Ввод из файла, где path - путь к файлу"
when "1"
	amount = ARGV[1].to_i
	puts "Input numbers:"
	list = []
	readList(list, amount)
	p list
when "2"
	path = ARGV[1]
	p readFile(path)
else
	puts "Такого метода нет. Для справки ввести -h"
end