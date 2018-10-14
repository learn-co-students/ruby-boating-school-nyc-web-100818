require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# - Students are initialized with a first name
# - Instructors are initialized with a name
# - BoatingTests are initialized with a
# ... student, test_name, and instructor

#Students

tim = Student.new("Tim")
eric = Student.new("Eric")

alex = Instructor.new("Alex")

midterm_tim = BoatingTest.new(tim, "midterm - tim", alex)
final_tim = BoatingTest.new(tim, "final - tim", alex)

midterm_eric = BoatingTest.new(eric, "midterm - eric", alex)
final_eric = BoatingTest.new(eric, "final - eric", alex)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
