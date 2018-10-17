require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

t1= spongebob.add_boating_test("Don't Crash 101", "passed", puff)
t2= patrick.add_boating_test("Don't Crash 201", "pending", puff)
t3= spongebob.add_boating_test("Don't Crash 301", "passed", krabs)
t4= patrick.add_boating_test("Don't Crash 401", "pending", krabs)
t5= spongebob.add_boating_test("Don't Crash 501", "pending", puff)

# test2= Instructor.pass_student("Spongebob", "Don't Crash 101")
# test3= Instructor.fail_student("Spongebob", "Don't Crash 101")

test4= Instructor.student_grade_percentage("Spongebob")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
