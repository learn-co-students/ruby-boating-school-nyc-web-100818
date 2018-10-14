class BoatingTest

  attr_accessor :test_status
  attr_reader :test_name

  @@all = []


  def initialize(student, test_name, instructor)
    @student = student
    @instructor = instructor
    @test_status = "pending"
    @test_name = test_name
    @@all << self
  end

  def self.all
    @@all
  end

  # returns array of tests associated with a Student object
  def self.student_tests(student_name)
    @@all.select {|tests| tests.first_name == student_name}
  end

  # access a BoatingTest object by its name
  def self.find_test_by_name(name)
    @@all.find {|test| test.test_name == name}
  end

  def first_name
    @student.first_name
  end

  def instructor
    @instructor.instructor
  end

end
