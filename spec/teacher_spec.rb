require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new(45, 'Jane', 'Math')
  end
  it 'Should return a Teacher object' do
    expect(@teacher).to be_an_instance_of Teacher
  end

  describe '#age' do
    it 'Should return teacher age' do
      expect(@teacher.age).to eql 45
    end
  end

  describe '#name' do
    it 'Should return teacher name' do
      expect(@teacher.name).to eql 'Jane'
    end
  end
  describe '#specialization' do
    it 'Should return specialization' do
      expect(@teacher.specialization).to eql 'Math'
    end
  end
end