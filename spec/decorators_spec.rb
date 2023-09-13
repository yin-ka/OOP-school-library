require 'spec_helper'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new(22, 'exampleword')
    @person.correct_name
    @capitalized_person = CapitalizeDecorator.new(@person)
  end

  it 'Should return a CapitalizeDecorator object' do
    expect(@capitalized_person).to be_an_instance_of CapitalizeDecorator
  end

  describe '#Capitalizing the first letter' do
    it 'Should return a string with the first letter capitalized' do
      expect(@capitalized_person.correct_name).to eql 'Exampleword'
    end
  end
end

describe TrimmerDecorator do
  before :each do
    @person = Person.new(22, 'exampleword')
    @person.correct_name
    @capitalized_person = CapitalizeDecorator.new(@person)
    @capitalized_trimmed_person = TrimmerDecorator.new(@capitalized_person)
  end

  it 'Should return a TrimmerDecorator object' do
    expect(@capitalized_trimmed_person).to be_an_instance_of TrimmerDecorator
  end

  describe '#Trimming a string' do
    it 'Should return a 10 character string' do
      expect(@capitalized_trimmed_person.correct_name).to eql 'Exampleword'
    end
  end
end
