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
    boating_test = BoatingTest.all.select do |test|
      test.student == student_name && test.test_name == boat_test_name
    end
  end

end
