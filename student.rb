class Student

  attr_reader :name,:cohort
  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort
  end
end
