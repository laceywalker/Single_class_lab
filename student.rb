class Student

  attr_reader :name,:cohort, :phrase
  attr_writer :name, :cohort, :phrase
  def initialize(student_name, cohort, phrase)
    @name = student_name
    @cohort = cohort
    @phrase = phrase
  end
#
#   def student_talking
#     return 'I can talk!'
#   end
end
