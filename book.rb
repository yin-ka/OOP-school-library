require './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end

  def make_json(*args)
    {
      JSON.create_id => self.class.name,
      'data' => [@title, @author]
    }.make_json(*args)
  end

  def self.json_create(object)
    new(*object['data'])
  end
end
