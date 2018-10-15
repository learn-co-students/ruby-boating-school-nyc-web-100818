class Instructor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    test = BoatingTest.find_student_test(student_name, test_name)
    test.status = "passed"
  end

  def self.fail_student(student_name, test_name)
    test = BoatingTest.find_student_test(student_name, test_name)
    test.status = "failed"
  end

  def self.student_grade_percentage(student_name)
    tests = BoatingTest.find_all_student_tests(student_name)
    passed_tests = tests.select{|test| test.status == "passed"}
    passed_tests.length.to_f / tests.length
  end

end
