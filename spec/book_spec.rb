require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Title', 'Author')
    @person = Person.new(25, 'Max')
    @date = '2022-12-31'
  end

  it 'should return a Book object' do
    expect(@book).to be_an_instance_of Book
  end

  it 'should return a book title' do
    expect(@book.title).to eql 'Title'
  end

  it 'should return a book author' do
    expect(@book.author).to eql 'Author'
  end

  context 'when adding a rental' do
    it 'should create a new rental and add it to the rentals array' do
      @book.add_rental(@person, @date)
      expect(@book.rentals.first).to be_an_instance_of Rental
      expect(@book.rentals.first.date).to eql @date
      expect(@book.rentals.first.person).to eql @person
    end
  end

  it 'should return a JSON representation of the book' do
    json = @book.to_json
    expect(json).to be_a String
    expect(json).to include('Title')
    expect(json).to include('Author')
  end
end
