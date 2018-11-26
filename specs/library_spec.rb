require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestSportsTeam < MiniTest::Test

  def setup
    @books = [{
      title: "Helter Skelter",
      rental_details: {
      student_name: "Banana Bob",
      date: "11/06/18"
      }
    },
      {title: "History of Bats",
      rental_details: {
      student_name: "Tony Piano Fingers",
      date: "10/06/1950"
      }
    },
    {title: "Waves of the Ocean",
    rental_details: {
      student_name: "James Earl Jones",
      date: "9/30/1928"
      }
    }]
  end

  def test_new_library
    new_library = Library.new(@books)
  end

  def test_return_book_info
    new_library = Library.new(@books)
    book_found = new_library.return_book_info("Helter Skelter", @books)
    assert_equal( @books[0], book_found)
  end

  def test_return_rental_info
    new_library = Library.new(@books)
    rental_details = new_library.return_rental_details("Helter Skelter", @books)
    assert_equal( @books[0][:rental_details], rental_details)
  end

  def test_add_new_book
    new_library = Library.new(@books)
    new_library.add_new_book("Mongeese: A Lifestyle", @books)
    book_found = new_library.return_book_info("Mongeese: A Lifestyle", @books)
    assert_equal(@books[3], book_found)
  end

  def test_change_rental_details
    new_library = Library.new(@books)
    book_revised = new_library.change_rental_details("Helter Skelter", "Flumper Piglet", "10/10/2018", @books)
    book_found = new_library.return_book_info("Helter Skelter", @books)
    assert_equal("Flumper Piglet", book_found[:rental_details][:student_name])
  end




end
