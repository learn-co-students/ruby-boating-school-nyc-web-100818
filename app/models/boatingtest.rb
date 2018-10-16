# 'BoatingTest' class:
#
# INIT - should initialize with student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object) - DONE
# CLASS METHOD - BoatingTest.all returns an array of all boating tests - DONE

class BoatingTest

  attr_accessor :student, :name, :status, :instructor

  @@all=[]

  def initialize(student,name,status,instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end #End of BoatingTest class
