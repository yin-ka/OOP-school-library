require 'spec_helper'

describe Rental do
  before :each do
    @rental = Rental.new('6/29//2023', 4, 3)
  end
  it 'Should return a Rental object' do
    expect(@rental).to be_an_instance_of Rental
  end

  describe '#date' do
    it 'Should return a rental date' do
      expect(@rental.date).to eql '9/13//2023'
    end
  end

  describe '#book index' do
    it 'Should return a book index' do
      expect(@rental.book).to eql 4
    end
  end
  describe '#person index' do
    it 'Should return a person index' do
      expect(@rental.person).to eql 3
    end
  end
end
