puts "Какой твой любимый язык?"
language = gets.strip

case language.downcase
when "ruby"
	puts "Ты подлиза!"
when "pascal"
	puts "Да ты шутник! Скоро будет Ruby!"
when "python"
	puts "Отлично! Скоро будет Ruby!"
when "c++"
	puts "Не беспокойся! Скоро будет Ruby!"
else
	puts "#{language}? Такого языка я не знаю. Но всё равно твоим любимым скоро будет Ruby!"
end