class Employee

  attr_accessor :fullname, :birth_year, :phone, :address, :email, :passport, :speciality
  attr_reader :experience, :previous_work, :position, :wage

  def expirience=(experience)
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

    @fullname = fullname
    @birth_year = birth_year
    @phone = phone
    @address = address
    @email = email
    @passport = passport
    @speciality = speciality
    @experience = experience
    @previous_work = previous_work
    @position = position
    @wage = wage
  end

  def to_s
    "#{fullname}\n" +
        "#{birth_year}\n" +
        "#{phone}\n" +
        "#{address}\n" +
        "#{email}\n" +
        "#{passport}\n" +
        "#{speciality}\n" +
        "#{experience}\n" +
        "#{previous_work}\n" +
        "#{position}\n" +
        "#{wage}\n\n"
  end
end