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

  def pass_student(student, test_name)
    test_name.status = "passed"
  end

  def fail_student(student, test_name)
    test_name.status = "failed"
  end

  def grade_percentage(student)
    t = 0
    return "This student has no tests!" if student.boating_tests.length < 1
    student.boating_tests.each do |bt|
      t += 1 if bt.status == "passed"
    end
    "#{(t / student.boating_tests.length)}% passed"
  end

end
