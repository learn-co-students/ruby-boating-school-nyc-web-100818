class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def find_student(name)
    @@all.find do |student|
      student.first_name == name
    end
  end

  def self.all
    @@all
  end

end #end of class
