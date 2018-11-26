require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    # Arrange
    student = Student.new('Billy', 'E27','I can talk!')
    # Act
    # Assert
    assert_equal('Billy', student.name)
  end

  def test_student_cohort
    # Arrange
    student = Student.new('Billy','E27', 'I can talk!')
    # Act
    # Assert
    assert_equal('E27', student.cohort)
  end

  def test_student_talking
    student = Student.new('Alice', 'E28', 'I can talk!')
    # phrase = student_talking()
    assert_equal('I can talk!', student.phrase)
  end
end
