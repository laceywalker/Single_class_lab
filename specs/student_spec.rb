require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_student_name
    # Arrange
    student = Student.new('Billy', 'E27')
    # Act

    # Assert
    assert_equal('Billy', student.name)
  end

  def test_student_cohort
    # Arrange
    student = Student.new('Billy','E27')
    # Act

    # Assert
    assert_equal('E27', student.cohort)
  end
end
