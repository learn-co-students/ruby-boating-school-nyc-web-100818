class Student

  attr_accessor :test_status
  attr_reader :first_name, :test_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  #this returns a student object, and could be useful in using string matching
  #for the Instructor methods
  def self.find_student(name)
    @@all.find {|student| student.first_name == name}
  end

  #a student can acces their tests - this returns BoatingTest objects
  def tests
    BoatingTest.student_tests(self.first_name)
  end

  #a student can access the tests they have passed
  def passed
    self.tests.select {|test| test.test_status == "passed"}
  end

  #return value for #passed and #failed are arrays of BoatingTest objects
  def failed
      self.tests.select {|test| test.test_status == "failed"}
  end

  #not easy to acces BoatingTests objects created with this method
  #without assigning them to a variable
  def add_boating_test(test_name, instructor)
    new_test = BoatingTest.new(self, test_name, instructor)
  end

end
