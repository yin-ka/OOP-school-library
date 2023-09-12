require './app.rb'
require './create_person'
require './create_book'
require './create_rental'
class Input
    # app = App.new
    def user_input(app,num)
        case num
        when 1
          app.book_list
        when 2
          app.people_list
        when 3
          CreatePerson.new(app.people).create_person
        when 4
          CreateBook.new(app.books).create_book
        when 5
          CreateRental.new(app.rentals).create_rental(app)
        when 6
          app.rental_list
        when !(1...7)
            p 'Invalid option, please choose again'
        end
    end
end