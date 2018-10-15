require_relative "./boatingtest.rb"
require_relative "./instructor.rb"
require_relative "./student.rb"


spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
puts test2 = puff.fail_student("Patrick", "Don't Crash 101")
