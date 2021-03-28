#3,15,27,39,51

=begin
Дан целочисленный массив и натуральный индекс (число, меньшее
размера массива). Необходимо определить является ли элемент по
указанному индексу глобальным максимумом.
=end

def task3 list, index
	if list.length - 1 < index || index < 0 then
		puts "Неверный индекс"
		return false
	end
	list[index] == list.max
end
	
=begin
Дан целочисленный массив и натуральный индекс (число, меньшее
размера массива). Необходимо определить является ли элемент по
указанному индексу локальным минимумом.
локальный минимум — это элемент, который меньше любого из своих соседей
=end

def task15 list, index
	if list.length - 2 < index || index < 1 then
		puts "Неверный индекс"
		return false
	end
	list[index-1 ... index+1].min == list[index]
end

=begin
Дан целочисленный массив. Необходимо осуществить циклический
сдвиг элементов массива влево на одну позицию.
=end

def task27 list
	list.rotate
end

=begin
Дан целочисленный массив. Необходимо вывести вначале его
элементы с четными индексами, а затем - с нечетными.
=end

def task39 list
	odd = []
	even = []
	list.each_index {|i| i.odd? ? odd.push(list[i]) : even.push(list[i])}
	even+odd
end

=begin
Для введенного списка построить два списка L1 и L2, где элементы L1
это неповторяющиеся элементы исходного списка, а элемент списка L2 с
номером i показывает, сколько раз элемент списка L1 с таким номером
повторяется в исходном.
=end

def task51 list
	list1 = []
	list2 = []
	list.each_index {|i| list1.include?(list[i]) ? i : list1.push(list[i])}
	list1.each {|elem| list2.push(list.count(elem))}
	
	p list1
	p list2
end

command = ARGV[0]
path = ARGV[1]
file = File.open(path)
list = file.readline.split.map{|x| x.to_i}

case command
when "-h"
	puts "Методы:\n1 Определит является ли элемент по
указанному индексу глобальным максимумом.
		\n2 Определит является ли элемент по
указанному индексу локальным минимумом.
		\n3 Осуществляет циклический
сдвиг элементов массива влево на одну позицию.
		\n4 Вывод вначале
элементы с четными индексами, а затем - с нечетными.
		\n5 Для введенного списка построить два списка L1 и L2, где элементы L1
это неповторяющиеся элементы исходного списка, а элемент списка L2 с
номером i показывает, сколько раз элемент списка L1 с таким номером
повторяется в исходном."
when "1"
	index = file.readline.to_i
	p list, index
	p task3 list, index
when "2"
	index = file.readline.to_i
	p list, index
	p task15 list, index
when "3"
	p list
	p task27 list
when "4"
	p list
	p task39 list
when "5"
	p list
	task51 list
else
	puts "Такого метода нет. Для справки ввести -h"
end