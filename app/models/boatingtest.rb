class BoatingTest
  attr_accessor :stud_name, :boat_test_name, :boat_test_status
  @@all = []

  def initialize(stud_name, boat_test_name, boat_test_status)
    @stud_name = stud_name
    @boat_test_name = boat_test_name
    @boat_test_status = boat_test_status
    self.all.class << self
  end
end
