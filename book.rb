require './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(date, self, person)
    @rentals << rental # Add the rental to the rentals array
    rental # Return the created rental object if needed
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'data' => [@title, @author]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['data'])
  end
end
