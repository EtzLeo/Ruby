#3,8,16
=begin
1.3. Дана строка. 
Необходимо найти общее количество русских символов.

1.8. Дана строка. 
Необходимо найти все используемые в ней строчные символы латиницы.

1.16.Дана строка. 
Необходимо найти минимальное из имеющихся в ней целых чисел.
=end

command = ARGV[0]

case command
when "-h"
	puts "Задачи:\n1 Найти общее количество русских символов.
		\n2 Найти все используемые в ней строчные символы латиницы.
		\n3 Найти минимальное из имеющихся в ней целых чисел."
when "1"
	str = "Hello Привет hмk hhл"
	p str.scan(/[а-яА-Я]/).count
when "2"
	str = "hello привет ПРИВеТ HeLLO"
	p str.scan(/[a-z]/)
when "3"
	str = "12 3фыi56 3jd"
	p str.scan(/\d+/).map{|i| i.to_i}.min
else
	puts "Такого метода нет. Для справки ввести -h"
end