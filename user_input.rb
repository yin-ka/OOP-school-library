require './app'
require './create_person'
require './create_book'
require './create_rental'
class Input
  def user_input(app, num)
    case num
    when 1 then app.book_list
    when 2 then app.people_list
    when 3 then create_person(app)
    when 4 then create_book(app)
    when 5 then create_rental(app)
    when 6 then app.rental_list
    else
      p 'Invalid option, please choose again'
    end
  end

  def create_person(app)
    CreatePerson.new(app.people).create_person
  end

  def create_book(app)
    CreateBook.new(app.books).create_book
  end

  def create_rental(app)
    CreateRental.new(app.rentals).create_rental(app)
  end
end
