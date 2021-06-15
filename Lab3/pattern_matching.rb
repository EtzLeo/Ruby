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
    (/^(\s*\b[А-ЯЁа-яё]+\b\s*([\-]\s*\b[А-ЯЁа-яё]+\b)?){2}\s*\b[А-ЯЁа-яё]+\b\s*(\b[А-ЯЁа-яё]+\b)?\s*$/ =~ fullname) != nil
  end

  def self.convert_fullname(fullname)
    raise ArgumentError, 'Некорректные ФИО' unless is_fullname? fullname
    fullname.strip.gsub(/\s+/, " ").gsub(/\s*[\-]\s*/, '-')
    fullname.split.map(&:capitalize).join(' ')
  end

  def self.is_date?(date)
    (/^\d{,2}\.\d{2}\.(\d{2}|\d{4})$/ =~ date) != nil
  end

  def self.convert_date(date)
    raise ArgumentError, 'Некорректная дата' unless is_date? date
    date.insert(0, "0") if date =~ /^\d\./
    date.insert(-3, "20") if date =~ /\.\d{2}$/
    date
  end

  def self.is_passport?(passport)
    (/^\s*\d{4}\s*\d{6}\s*$/ =~ passport) != nil
  end

  def self.convert_passport(passport)
    raise ArgumentError, 'Некорректные паспортные данные' unless is_passport? passport
    passport.strip.gsub(/\s+/, "").insert(4, " ")
  end

end