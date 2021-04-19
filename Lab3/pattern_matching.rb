##
# Сопоставление с образцом.

module PatternMatching

  def self.is_phone_number?(phone)
    (/^((8|\+7)[\- ]?)?\(?\d{3}\)?[\- ]?\d{3}[\- ]?\d{2}[\- ]?\d{2}$/ =~ phone) != nil
  end

  def self.convert_phone(phone)
    raise ArgumentError, "Некорректный номер!" unless is_phone_number? phone
    phone.gsub('-', '').gsub('(', '').gsub(')', '').gsub(' ', '').gsub('+7', '8').insert(1, '-').insert(5, '-')
  end

  def self.is_email?(email)
    (/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ =~ email) != nil
  end

  def self.convert_email(email)
    raise ArgumentError, 'Некорректный email' unless is_email? email
    email.downcase
  end

  def self.is_fullname?(fullname)
    #(/(\s*[А-ЯЁ][а-яё]+\s*[\-\s*]?)/ =~ fullname) != nil
    (/\A(\s*[А-ЯЁа-яё]\s*[\-\s*]?(\s*[А-ЯЁа-яё])?){2}\s*[А-ЯЁа-яё]\s*[А-ЯЁа-яё]?\s*\z/ =~ fullname) != nil
  end

  def self.convert_fullname(fullname)
    raise ArgumentError, 'Некорректный fio' unless is_fullname? fullname
    fullname
  end

end