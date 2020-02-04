require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("spongebob")

mspuff = Instructor.new("ms puff")

spongebob_bt = spongebob.add_boating_test(self, "test 1", "boat test taken")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
