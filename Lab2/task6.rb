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
