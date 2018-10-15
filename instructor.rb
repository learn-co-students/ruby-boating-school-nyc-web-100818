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

  def pass_student(student_name, test_name)
    my_tests_with_testname = BoatingTest.all.each do |test|
       test.instructor == self && test.test_name == test_name
     end
    student_test = my_tests_with_testname.find do |test|
        test.student.first_name == student_name
     end
    student_test.test_status = "passed"
  end

  def fail_student(student_name, test_name)
    my_tests_with_testname = BoatingTest.all.each do |test|
      test.instructor == self && test.test_name == test_name
    end
    student_test = my_tests_with_testname.find do |test|
      test.student.first_name == student_name
    end
    student_test.test_status = "failed"
  end

  def student_grade_percentage(student_first_name)
    count = 0
    students_tests = []
     my_tests_with_testname = BoatingTest.all.each do |test|
       test.instructor == self
     end
     student_test = my_tests_with_testname.each do |test|
      students_tests << "hi"
        if test.student.first_name == student_first_name && test.test_status == "passed"
        count += 1
        end
     end
      nominator = students_tests.length
      final = count/nominator.to_f
      (final*100).to_i.to_s + "%"
  end
end #end of class
