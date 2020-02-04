class BoatingTest
  attr_accessor :stud_name, :boat_test_name, :boat_test_status, :boat_test_inst
  @@all = []

  def initialize(stud_name, boat_test_name, boat_test_status, boat_test_inst)
    @stud_name = stud_name
    @boat_test_name = boat_test_name
    @boat_test_status = boat_test_status
    @boat_test_inst = boat_test_inst
    self.all.class << self
  end

  def self.all
    @@all
  end

end
