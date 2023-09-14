require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Title', 'Author')
  end

  it 'should return a Book object' do
    expect(@book).to be_an_instance_of Book
  end

  describe '#title' do
    it 'should return a book title' do
      expect(@book.title).to eql 'Title'
    end
  end

  describe '#author' do
    it 'should return a book author' do
      expect(@book.author).to eql 'Author'
    end
  end

  describe '#add_rental' do
    it 'should add a rental to the book' do
      rental = Rental.new('John Doe', '2023-09-14', '2023-09-21')
      @book.add_rental(rental)
      expect(@book.rentals).to include(rental)
    end
  end

  describe '#to_json' do
    it 'should return book data in JSON format' do
      json_data = {
        title: 'Title',
        author: 'Author',
        rentals: []
      }.to_json

      expect(@book.to_json).to eql json_data
    end
  end
end
