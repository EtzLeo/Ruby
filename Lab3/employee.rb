require_relative 'pattern_matching'

class Employee

  attr_accessor :address, :speciality
  attr_reader :experience, :previous_work, :position, :wage, :phone, :email, :fullname, :birth_year, :passport

  def phone=(phone)
    @phone = PatternMatching.convert_phone(phone)
  end

  def email=(email)
    @email = PatternMatching.convert_email(email)
  end

  def fullname=(fullname)
    @fullname = PatternMatching.convert_fullname(fullname)
  end

  def birth_year=(birth_year)
    @birth_year = PatternMatching.convert_date(birth_year)
  end

  def passport=(passport)
    @passport = PatternMatching.convert_passport(passport)
  end

  def experience=(experience)
    @experience = experience.to_i.zero? ? 0 : experience.to_i
  end

  def previous_work=(previous_work)
    @previous_work = @experience.zero? ? 'NA' : previous_work.to_i
  end

  def position=(position)
    @position = @experience.zero? ? 'NA' : position.to_i
  end

  def wage=(wage)
    @wage = @experience.zero? ? 0 : wage.to_i
  end


  def initialize(fullname,
                 birth_year,
                 phone,
                 address,
                 email,
                 passport,
                 speciality,
                 experience = 0,
                 previous_work = '',
                 position = '',
                 wage = 0)

    @fullname = PatternMatching.convert_fullname(fullname)
    @birth_year = PatternMatching.convert_date(birth_year)
    @phone = PatternMatching.convert_phone(phone)
    @address = address
    @email = PatternMatching.convert_email(email)
    @passport = PatternMatching.convert_passport(passport)
    @speciality = speciality
    @experience = experience.to_i.zero? ? 0 : experience.to_i
    @previous_work = @experience.zero? ? 'NA' : previous_work.to_i
    @position = @experience.zero? ? 'NA' : position.to_i
    @wage = @experience.zero? ? 0 : wage.to_i
  end

  def to_s
    "ФИО: #{fullname}\n" +
        "Дата рождения: #{birth_year}\n" +
        "Номер телефона: #{phone}\n" +
        "Адрес: #{address}\n" +
        "Email: #{email}\n" +
        "Серия и номер паспорта: #{passport}\n" +
        "Специальность: #{speciality}\n" +
        "Стаж работы по специальности: #{experience}\n" +
        "Предыдущее место работы: #{previous_work}\n" +
        "Должность: #{position}\n" +
        "Зарплата на прошлой работе: #{wage}\n\n"
  end
end