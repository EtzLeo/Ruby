puts "Какой твой любимый язык?"
language = gets

if language.downcase.strip == "ruby" then
	puts "Ты подлиза!"
else 
	puts "Скоро будет Ruby! #{language} тебе больше не нужен!"
end