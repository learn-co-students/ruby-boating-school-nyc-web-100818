require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


s1= Student.new("Spongebob")
s2= Student.new("Patrick")

i1= Instructor.new("Ms.Puff")
i2= Instructor.new("Mr.Krabs")

t1= s1.add_boating_test("Don't Crash 101", "pending", i1)
t2= s1.add_boating_test("Safety on the water", "pending", i2)
t3= s1.add_boating_test("Drinking and boating", "pending", i1)
t4= s2.add_boating_test("Big boats don't cry", "pending", i1)
t5= s2.add_boating_test("Advance boater safety", "pending", i2)
t6= s2.add_boating_test("Don't Crash 101", "pending", i1)


Instructor.pass_student(s1,"Don't Crash 101")
Instructor.pass_student(s1,"Safety on the water")
Instructor.fail_student(s1,"Drinking and boating")

Instructor.student_grade_percentage("Spongebob")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
