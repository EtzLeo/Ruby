str = "12 апреля 2857 года слова слова 2 января 1999 года слова"
p str.scan(/\d\d?\s+(?:января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря)\s+\d{4}/)