require './rental'

class CreateRental
  def initialize(rent)
    @rentals = rent
  end

  def create_rental(app)
    book, person, date = collect_data(app)
    new_rental = Rental.new(date, app.books[book], app.people[person])
    update(new_rental)
  end

  private

  def collect_data(app)
    print "Select a book from the following list by index number \n"
    app.book_list
    book = gets.chomp.to_i
    print "select a person from the following list by index number\n"
    app.people_list
    person = gets.chomp.to_i
    print 'select a date'
    date = gets.chomp

    [book, person, date]
  end

  def update(new_rental)
    @rentals << new_rental
    puts 'Rental created successfully'
    File.open('rentals.json', 'w+') do |file|
      rentals = JSON.dump(@rentals)
      file.write(rentals)
    end
  end
end
