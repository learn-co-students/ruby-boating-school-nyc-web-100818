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

  def self.tests(test_name)
    BoatingTest.all.select do |test|
      test.test_name == test_name
    end
  end

   def self.pass_student(student_name, test_name)
    self.tests(test_name).select do |test|
      test.test_status = "Pass"
    end
  end

  def self.fail_student(student_name, test_name)
    self.tests(test_name).select do |test|
      test.test_status = "Fail"
    end
  end

  def self.student_grade_percentage(student_name)
    count = 0
    students_tests = BoatingTest.all.select do |test|
       test.student.first_name
    end
    students_tests.each do |test|
      if test.test_status == "Pass"
        count += 1
      end
    end
    number =((count/students_tests.length)*100).to_i
    answer = "#{number.to_s}%"
  end
end
