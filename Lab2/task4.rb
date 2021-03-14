def readFile(path)
	file = File.open(path)
	list = file.read.strip.split.map{|x| x.to_i}
end

path = "task4.txt"
p readFile(path)