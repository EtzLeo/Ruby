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
	list.length.times do |i|
		if list[i] >= list[index] then
			return false
		end
	end
	return true
end
	
=begin
Дан целочисленный массив и натуральный индекс (число, меньшее
размера массива). Необходимо определить является ли элемент по
указанному индексу локальным минимумом.
локальный минимум — это элемент, который меньше любого из своих соседей
=end

def task15 list, index
	if list.length - 1 < index || index < 0 then
		puts "Неверный индекс"
		return false
	end
	index_left = list[index] < list[index-1]
	index_right = list[index] < list[index+1]
	index_left == index_right
end

=begin
Дан целочисленный массив. Необходимо осуществить циклический
сдвиг элементов массива влево на одну позицию.
=end

def task27 list
	first = list[0]
	(list.length - 1).times do |i|
		list[i] = list[i+1]
	end
	list[-1] = first
	list
end
