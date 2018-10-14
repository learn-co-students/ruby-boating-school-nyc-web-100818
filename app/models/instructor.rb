# 'Instructor' class:
#
# init with name
# return all instructors
# Instructor.pass_student should take in a student name and test name and return status passed
# Instructor.fail_student should take in a student name and test name and return status failed
# Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed

class Instructor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def get_instructor_tests
    tests = BoatingTest.all.select do |a_test|
      a_test.instructor == self
    end
    tests
  end

  def self.find_test(student, test_name)
    student_tests = student.get_student_tests
    student_tests.find do |student_test|
      student_test.test_name == test_name
    end
   end

  # Instructor.pass_student should take in a student name and test name and return status passed
  def self.pass_student (student, test_name)
    find_test(student,test_name).test_status = "passed"
  end

  def self.fail_student (student, test_name)
    find_test(student, test_name).test_status = "failed"
  end

  # Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed
  def self.student_grade_percentage(first_name)
    percentage = 0.0
    passed = 0.0
    failed = 0.0
      BoatingTest.all.each do |boating_test|
      if boating_test.student.first_name == first_name && boating_test.test_status == "passed"
        passed +=1
      elsif boating_test.student.first_name == first_name && boating_test.test_status == "failed"
        failed +=1
      else
        "not graded yet"
      end
    end
    if passed > 0 || failed > 0
    percentage = passed/(passed+failed)
    else
    "nothing to see here"
    end
    "#{percentage.round(3)*100}%"
  end


  def self.all
    @@all
  end

end
