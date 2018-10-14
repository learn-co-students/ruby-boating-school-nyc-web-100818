class BoatingTest

  attr_accessor :test_status
  attr_reader :test_name

  @@all = []


  def initialize(student, test_name, instructor)
    @student = student
    @@all << self
    @instructor = instructor
    @test_status = "pending"
    @test_name = test_name
  end

  def self.all
    @@all
  end

  def self.student_tests(student_name)
    @@all.select {|tests| tests.first_name == student_name}
  end

  def first_name
    @student.first_name
  end

  def instructor
    @instructor.instructor
  end

end

#access first name of student associated with a tests
