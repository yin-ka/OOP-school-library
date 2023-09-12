require './book'
require './teacher'
require './student'
require './rental'

class App
  attr_accessor :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def book_list
    print "\nSorry you can't find any books\n" if @books.empty?
    @books.each_with_index do |book, index|
      print "\n(#{index}) Title: \"#{book.title}\", Author: \"#{book.author}\"\n"
    end
  end

  def people_list
    people = @people
    people.each_with_index do |person, index|
      print "\n(#{index}) Name: \"#{person.name}\", Age: \"#{person.age}\", id: \"#{person.id}\"\n"
    end
    print "\nSorry you can't find any person\n" if people.empty?
  end

  def rental_list
    puts "Please enter person's id to see rentals"
    people_list
    print "\nSorry you can't find any rentals\n" if @rentals.empty?
    id = gets.chomp.to_i
    @rentals.each do |i|
      print "\nDate: #{i.date}, Title: #{i.book.title}, Author: #{i.book.author}\n" if id == i.person.id
    end
  end
end
