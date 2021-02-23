puts "Какой твой любимый язык?"
language = gets.strip

unless language.downcase != "ruby" then
	puts "Ты подлиза!"
else 
	puts "Скоро будет Ruby! #{language} тебе больше не нужен!"
end