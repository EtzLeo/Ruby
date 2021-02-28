num = ARGV[0].to_i
sum = 0
num.digits.each{|n| sum = sum + n}
p "sum of digits = " + sum.to_s