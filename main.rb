require './app'
require './create_person'
require './create_book'
require './create_rental'

class Main
  def initialize
    @app = App.new
    @choice = 0
  end

  def options
    print 'WELCOME TO THE SCHOOL LIBRARY APP'
    while @choice != 7
      print "\nPlease choose an option by entering a number \n\n"
      print "1 - List all books \n"
      print "2 - List all people \n"
      print "3 - Create a person (teacher or student) \n"
      print "4 - Create a book \n"
      print "5 - Create a rental \n"
      print "6 - List all rentals for a person \n"
      print "7 - Quit \n"
      init_app
    end
  end

  def init_app
    @choice = gets.chomp.to_i
    case @choice
    when 1
      @app.book_list
    when 2
      @app.people_list
    when 3
      CreatePerson.new(@app.people).create_person
    when 4
      CreateBook.new(@app.books).create_book
    when 5
      CreateRental.new(@app.rentals).create_rental(@app)
    when 6
      @app.rental_list
    end
  end
end

main = Main.new
main.options
