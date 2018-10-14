# 'Student' class:
#
# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# Student.find_student will take in a student first name and output that student (Object)

class Student
  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  #add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def find(first_name)
    Student.all.find{|student| student.first_name == first_name}
  end

  #returns an array of BoatingTest Objects that belong to the student.
  def get_student_tests
    BoatingTest.all.select {|a_test| a_test.student == self}
  end

  def self.all
    @@all
  end


end
