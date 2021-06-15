require_relative 'employee'
require_relative 'pattern_matching'

class TestEmployee < Employee

  def self.test
    print("1. Телефон\n2. Email\n3. ФИО\n4. Дата рождения\n5. Паспорт\nВведите номер: ")
    answer = STDIN.gets.chomp.to_i
    case answer
    when 1
      print "Введите номер телефона: "
      begin
        phone = STDIN.gets.chomp
        puts PatternMatching.convert_phone phone
      end
    when 2
      print "Введите Email: "
      begin
        email = STDIN.gets.chomp
        puts PatternMatching.convert_email email
      end
    when 3
      print "Введите ФИО: "
      begin
        fullname = STDIN.gets.chomp
        print(fullname)
        puts PatternMatching.convert_fullname fullname
      end
    when 4
      print "Введите дату рождения: "
      begin
        date = STDIN.gets.chomp
        puts PatternMatching.convert_date date
      end
    when 5
      print "Введите паспортные данные: "
      begin
        passport = STDIN.gets.chomp
        puts PatternMatching.convert_passport passport
      end
      else puts("Неверный номер!")
    end
  end

  def to_s
    "Анкета тестового сотрудника:\n" +
        super()
  end

end

ivan = TestEmployee.new("   Иванов-     Иванов Иван     -Иван   Иванович    Заде   ",
                        "1.10.00",
                        "89001234567",
                        "ул. Красная, д. 1",
                        "ivankaban@mail.ru",
                        "  0000123456   ",
                        "погромист",
                        0)
bogdan = TestEmployee.new("Иванов Богдан Иванович",
                          "10.10.1996",
                          "89181234567",
                          "ул. Красная, д. 2",
                          "kabanbogdan@mail.ru",
                          "0000123457",
                          "Программист",
                          3,
                          "Mail.ru",
                          "Android Developer",
                          250000)
puts ivan
puts bogdan
TestEmployee.test