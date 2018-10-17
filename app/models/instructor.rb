class Instructor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(first_name, test_name)
    ptest = BoatingTest.all.find {|b_test| b_test.student.first_name == first_name && b_test.test_name == test_name}
    ptest.test_status = "passed"
  end

  def self.fail_student(first_name, test_name)
    ptest = BoatingTest.all.find {|b_test| b_test.student.first_name == first_name && b_test.test_name == test_name}
    ptest.test_status = "failed"
  end

  def self.student_grade_percentage(first_name)
    student_tests = BoatingTest.all.select { |btest|
      btest.student.first_name == first_name }

    pass = student_tests.select {|stest| stest.test_status == "passed"}

    return (pass.length.to_f / student_tests.length.to_f)
  end
end #class Instructor

# 'Instructor' class:
# * init with name
# * return all instructors
# * Instructor.pass_student should take in a student name and test name and return status passed
# * Instructor.fail_student should take in a student name and test name and return status failed
# * Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed
