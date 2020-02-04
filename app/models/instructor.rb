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
    BoatingTest.all.select do |tests|
      if tests.stud_name.name == student_name && tests.boat_test_name == test_name
        tests.boat_test_name = "passed"
      elsif tests.stud_name.name == student_name && tests.boat_test_name != test_name
        current_student = tests.stud_name.name == student_name
        current_student.add_boating_test(current_student, test_name, "passed", self)
    end
  end

end
