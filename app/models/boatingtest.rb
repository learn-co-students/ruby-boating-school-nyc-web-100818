class BoatingTest
  attr_reader :student, :test_name, :instructor
  attr_accessor :status

  @@all = []

  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student_test(student_name,test_name)
    self.find_all_student_tests(student_name).find{|test| test.test_name == test_name}
  end

  def self.find_all_student_tests(student_name)
    # find the student object from name
    student = Student.find_student(student_name)
    # find the test that this student took
    self.all.select{|test|
      test.student == student
    }
  end

end
