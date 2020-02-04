class Student
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(st_name, bt_name, bt_status, inst_name)
    BoatingTest.new(self, bt_name, bt_status, inst_name)
  end

  def self.find_student(first_name)
    self.all.select do |roster|
      roster.name == first_name
    end
  end

  def grade_percentage

  end

end
