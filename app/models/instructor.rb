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
        tests.boat_test_status = "passed"
      end
      if tests.stud_name.name == student_name && tests.boat_test_name != test_name
        current_student = tests.stud_name.name == student_name
        BoatingTest.new(student_name, test_name, "passed", self)
      end
    end
  end

end
