require_relative 'employee'

class TestEmployee < Employee

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