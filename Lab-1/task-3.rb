puts "Какой твой любимый язык?"
language = gets.strip

unless language.downcase != "ruby" then
	puts "Ты подлиза!"
else 
	unless language != "pascal"
		puts "Да ты шутник!"
	elsif language == "python"
		puts "Отлично!"
	elsif language == "c++"
		puts "Не беспокойся!"
	puts "Скоро будет Ruby!"
	end
end