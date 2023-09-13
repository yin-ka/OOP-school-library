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
end
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
end
