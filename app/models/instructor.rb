# 'Instructor' class:
# init with name - DONE
# CLASS METHOD Instructor.all return all instructors - DONE
# CLASS METHOD Instructor.pass_student should take in a student name and test name and return status passed
# CLASS METHOD Instructor.fail_student should take in a student name and test name and return status failed
# CLASS METHOD Instructor.student_grade_percentage should take in a student first name and output the percentage of tests that they have passed

class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # .pass_student iterates through BoatingTest.all and finds a student AND the matching test (via the two arguments) and pass him/her (i.e. set status to "passed")

  def self.pass_student(student_first_name,test_name)
    passed_test = BoatingTest.all.find do |test|
      test.student.first_name == student_first_name && test.name == test_name
    end
      passed_test.status = "passed"
  end

  # .fail_student iterates through BoatingTest.all and finds a student AND the matching test (via the two arguments) and fail him/her (i.e. set status to "failed")
  def self.fail_student(student_first_name,test_name)
    failed_test = BoatingTest.all.find do |test|
      test.student.first_name == student_first_name && test.name == test_name
    end
      failed_test.status = "failed"
  end

  # .student_grade_percentage outputs the percentage of tests that the particular student has passed
  # % tests passed = passed_tests / total_tests
  # passed_tests =


  def self.student_grade_percentage(first_name)

    #find the student
    student = Student.all.find do |student|
      student.first_name == first_name
    end

    #find that student's tests
    student_tests = BoatingTest.all.select do |test|
      test.student == student
    end

    total_tests = student_tests.size

    pass_tests = student_tests.select do |test|
      test.status == "passed"
    end

    total_passed = pass_tests.size

    total_passed.to_f/total_tests*100

  end


end # End of Instructor class
