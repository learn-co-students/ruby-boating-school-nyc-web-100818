class Instructor

  attr_accessor :test_status
  attr_reader :test_name, :instructor, :first_name

  @@all = []

  def initialize(name)
    @instructor = name
    @@all << self
  end

  def self.all
    @@all
  end

  #returns an array of all tests belonging to an instructor
  def list
    BoatingTest.all.select {|test| test.instructor == self.instructor}
  end

  #very simple and should probably check for the existence of a student and test
  #arguments are not strings of names, but rather an instance object of
  #Student and BoatingTest class
  def self.pass_student(first_name, test_name)
      test_name.test_status = "passed"
  end

  def self.fail_student(first_name, test_name)
      test_name.test_status = "failed"
  end


  #this could be a lot more complex based on completed vs. pending tests
  #the argument it takes is not the class variable, but rather a student object
  def self.student_grade_percentage(first_name)
    total = first_name.tests.size
    passed = first_name.passed.size
    percentage = passed.to_f / total.to_f
    percentage.to_f
  end

end
#how does instructor access first name?
