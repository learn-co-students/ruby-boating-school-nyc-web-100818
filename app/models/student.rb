# 'Student' class:

# INIT -should initialize with first_name - DONE
# CLASS METHOD - Student.all should return all of the student instances - DONE
# INSTANCE METHOD  - Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object) - DONE
# CLASS METHOD - Student.find_student will take in a student first name and output that student (Object) - DONE

class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  # Initiliaze a new instance of BoatingTest with (self,name,status,instructor). Self is the current instance of Student Object
  def add_boating_test(name,status,instructor)
    BoatingTest.new(self,name,status,instructor)
  end

  # goes throug Student.all and finds the first student instance that has #firt_name attribute == first_name
  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end

  end



end # End of Student Class
