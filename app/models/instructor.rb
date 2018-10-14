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

  # returns an array of all tests belonging to an instructor
  def list
    BoatingTest.all.select {|test| test.instructor == self.instructor}
  end

  def self.pass_student(student, exam_name)
    if self.find_student_by_name(student) == nil || BoatingTest.find_test_by_name(exam_name) == nil
      "Missing student and/or test data, which test would you like to mark and for whom?"
    else
      BoatingTest.find_test_by_name(exam_name).test_status = "passed"
    end
  end

  def self.fail_student(student, exam_name)
    if self.find_student_by_name(student) == nil || BoatingTest.find_test_by_name(exam_name) == nil
      "Missing student and/or test data, which test would you like to mark and for whom?"
    else
      BoatingTest.find_test_by_name(exam_name).test_status = "failed"
    end
  end

  # returns the student object
  def self.find_student_by_name(name)
      Student.all.find {|student| student.first_name == name}
  end

  def self.student_grade_percentage(name)
    student = self.find_student_by_name(name)
    total = student.tests.size
    passed = student.passed.size
    percentage = (passed.to_f / total.to_f) * 100
    "#{name}'s grade percentage is #{percentage}%"
  end

end
