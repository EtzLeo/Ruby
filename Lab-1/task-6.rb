num = ARGV[0].to_i.digits
p num
def sum(num)
	sum = 0
	num.each{|n| sum = sum + n}
	sum
end

def min(num)
	min = num[0]
	num.each{|n| min = n if n < min}
	min
end

def max(num)
	max = num[0]
	num.each{|n| max = n if n > max}
	max
end

def mult(num)
	mult = 1
	num.each{|n| mult = n * mult}
	mult
end
p sum(num)
p min(num)
p max(num)
p mult(num)