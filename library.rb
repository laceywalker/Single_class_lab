class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def return_book_info(title, books)
    for book in books
      if book[:title] == title
      return book
      end
    end
  end

  def return_rental_details(title, books)
    for book in books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_new_book(title, books)
    newbook = {
      title: title,
      rental_details: {
        student_name: " ",
        date: " "
        }
      }
    @books << newbook
  end

  def change_rental_details(title, name, date, books)
    for book in books
      if book[:title] == title
        book[:rental_details][:student_name] = name
        book[:rental_details][:date] = date
      end
    end
  end
end
