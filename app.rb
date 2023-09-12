require './book'
require './teacher'
require './student'
require './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    created_books_file = create_new_json('books')
    @books = created_books_file ? JSON.parse(created_books_file.read, create_additions: true) : []
    created_people_file = create_new_json('people')
    @people = created_people_file ? JSON.parse(created_people_file.read, create_additions: true) : []
    created_rent_file = create_new_json('rentals')
    @rentals = created_rent_file ? JSON.parse(created_rent_file.read, create_additions: true) : []
  end

  def create_new_json(file_name)
    File.write("#{file_name}.json", []) unless File.exist?("#{file_name}.json")
    File.open("#{file_name}.json", 'r')
  end

  def book_list
    print "\nSorry we don't have any book registered\n" if @books.empty?
    @books.each_with_index do |book, index|
      print "\n(#{index}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n"
    end
  end

  def people_list
    people = @people
    people.each_with_index do |person, index|
      print "\n(#{index}) Name: \"#{person.name}\", Age: \"#{person.age}\", id: \"#{person.id}\"\n"
    end
    print "\nSorry we don't have anyone registered\n" if people.empty?
  end

  def rental_list
    people = @people
    unless people.empty?
      puts "Please enter person's id to see rentals"
      people_list
    end
    print "\nSorry we don't have any rentals registered\nPress enter" if @rentals.empty?
    end
  end
end
