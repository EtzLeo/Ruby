num = ARGV[0].to_i
command = ARGV[1]
command = command.chars
command.delete ","
p command
def sum(num)
	sum = 0
	num.digits.each{|n| sum = sum + n}
	sum
end

def min(num)
	num = num.digits
	min = num[0]
	num.each{|n| min = n if n < min}
	min
end

def max(num)
	num = num.digits
	max = num[0]
	num.each{|n| max = n if n > max}
	max
end

def mult(num)
	mult = 1
	num.digits.each{|n| mult = n * mult}
	mult
end

def prime(num)
	for i in 2..num-1 do
		return false if num%i == 0
	end
	return true
end

def maxPrimeDiv(num) # максимальнй простой делитель
	max = 0
	for i in 2..num-1 do
		max = i if num%i == 0 && prime(i) && i > max
	end
	return max
end

def multNotDel5(num) #произведение цифр числа, не делящихся на 5
	mult = 1
	num.digits.each{|n| mult = mult * n if n%5 != 0}
	return mult
end

def nodCh(num) #НОД максимального нечетного непростого делителя
#числа и прозведения цифр данного числа.
	mult = mult(num) #прозведения цифр числа
	arr = Array.new
	for i in 2..num-1 do
		arr << i if num%i == 0 && !prime(i) && i%2 !=0
	end

	if !arr.empty? then
		max = arr[0] #максимального нечетного непростого делителя
		arr.each{|n| max = n if n > max}
		return mult.gcd max #НОД
	end
	return "Невозможно вычислить"
end

for i in command do
	case i
when "-h"
	puts "Описание методов:\n1 - Выводит сумму цифр числа\n2 - Выводит наименьшую цифру числа\n3 - Выводит наибольшую цифру числа
	4 - Выводит произведение цифр числа\n5 - Выводит максимальнй простой делитель числа\n6 - Выводит произведение цифр числа, не делящихся на 5
	7 - Выводит НОД максимального нечетного непростого делителя числа и прозведения цифр данного числа
	1,3,4 - Выводит описанные выше методы 1, 3, 4."
when "1"
	puts "sum of digits = #{sum(num)}"
when "2"
	puts "minimum of digits = #{min(num)}"
when "3"
	puts "maximum of digits = #{max(num)}"
when "4"
	puts "multiplication of digits = #{mult(num)}"
when "5"
	puts "maximum prime divisor = #{maxPrimeDiv(num)}"
when "6"
	puts "product of digits not divisor by 5 = #{multNotDel5(num)}"
when "7"
	puts "GCD = #{nodCh(num)}"
else
	puts "Такого метода нет. Для справки ввести -h"
end
end