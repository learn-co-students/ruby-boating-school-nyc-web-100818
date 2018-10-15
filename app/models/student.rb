class Student

  attr_reader :first_name, :boating_tests

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
    @boating_tests = []
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    @boating_tests << BoatingTest.new(self, test_name,status,instructor)
  end

  def self.find_student(name)
    @@all.find { |student| student.first_name == name }
  end

end
