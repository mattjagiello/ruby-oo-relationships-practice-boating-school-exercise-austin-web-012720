require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("spongebob")
patrick = Student.new("patrick")

mspuff = Instructor.new("ms puff")
mrkrabs = Instructor.new("mr krabs")

spongebob_bt = spongebob.add_boating_test(self, "test 1", "pending", mspuff)
patrick_bt = patrick.add_boating_test(self, "test 1", "pending", mrkrabs)

mspuff.pass_student("spongebob", "test 1")
#mspuff.pass_student("spongebob", "test 2")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
