class Instructor
  attr_accessor :inst_name
  @@all = []

  def initialize(inst_name)
    @inst_name = inst_name
    self.class.all << self
  end

  def self.all
    @@all << self
  end

  def pass_student(student_name, test_name)
    test = BoatingTest.all.select do |x|
      x.stud_name == student_name && x.test_name == boat_test_name
    end
    test.status = "passed"

  end

end
