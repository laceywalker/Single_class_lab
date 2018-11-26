class Student

  attr_reader :name,:cohort, :phrase, :language
  attr_writer :name, :cohort, :phrase, :language
  def initialize(student_name, cohort, phrase, language)
    @name = student_name
    @cohort = cohort
    @phrase = phrase
    @language = 'I love ' + language + '!'
  end
end
