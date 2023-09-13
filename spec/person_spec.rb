require 'spec_helper'

describe Person do
  before :each do
    @book = Book.new('Title', 'Author')
    @date = '12-02-2023'
    @person = Person.new(15, 'Joe')
    @person2 = Person.new(18)
    @person.add_rentals('6/29/2023', 4)
  end
  it 'Should return a person object' do
    expect(@person).to be_an_instance_of Person
  end

  describe '#age' do
    it 'Should return Person age' do
      expect(@person.age).to eql 15
    end
  end

  describe '#name' do
    it 'Should return Person name' do
      expect(@person.name).to eql 'Joe'
    end
  end

  describe '#of_age?' do
    it 'Return true if age is 18 or greater' do
      @person.age = 19
      expect(@person.of_age?).to eq true
    end

    it 'Return false if age is less than 18' do
      expect(@person.of_age?).to eq false
    end
  end

  describe '#empty rental' do
    it 'should return an empty rental' do
      expect(@person.rentals).to eql []
    end
  end

  describe '#default name' do
    it 'Should assgine a default value' do
      expect(@person2.name).to eql 'unknown'
    end
  end
  describe '#parent_permission' do
    it 'assigns parent permission to true by default' do
      expect(@person.instance_variable_get(:@parent_permission)).to eq true
    end
  end

  describe '#can_use_services?' do
    it 'Return true if age is >= 18' do
      expect(@person.can_use_services?).to eq true
    end

    it 'Return true if parent permission is granted' do
      @person.instance_variable_set(:@parent_permission, true)
      @person.age = 15
      expect(@person.can_use_services?).to eq true
    end
  end

  describe '#add_rental' do
    it 'Creates a new Rental object and adds it to rentals array' do
      @rental = @person.add_rentals(@date, @book)
      expect(@rental).to be_an_instance_of Rental
      expect(@rental.date).to eq @date
    end

    it 'Associates the rental with the person' do
      @rental = @person.add_rentals(@date, @book)
      expect(@rental.person).to eq @person
    end

    it 'Associates the rental with the book' do
      @rental = @person.add_rentals(@date, @book)
      expect(@rental.book).to eq @book
    end
  end
end
