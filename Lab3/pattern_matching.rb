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

end