puts "Какой твой любимый язык?"
language = gets.strip

res = ""

unless language.downcase != "ruby" then
	puts "Ты подлиза!"
else 
	res = unless language != "pascal" then
		"Да ты шутник!"
	else 
		"#{language}? Не знаю такого языка."
	end
	puts res
end