require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(17, 'Rose', false)
  end
  it 'Should return a Student object' do
    expect(@student).to be_an_instance_of Student
  end

  describe '#age' do
    it 'Should return student age' do
      expect(@student.age).to eql 17
    end
  end

  describe '#name' do
    it 'Should return student name' do
      expect(@student.name).to eql 'Rose'
    end
  end
  describe '#parent permission' do
    it 'Should return parent permission' do
      expect(@student.parent_permission).to be false
    end
  end

  describe '#play_hooky' do
    it "Should return '¯(ツ)/¯'" do
      expect(@student.play_hooky).to eql '¯(ツ)/¯'
    end
  end
end
