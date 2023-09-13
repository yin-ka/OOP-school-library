require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('label')
  end

  it 'should return a Classroom object' do
    expect(@classroom).to be_an_instance_of Classroom
  end

  describe '#students' do
    it 'should return a students array' do
      expect(@classroom.students).to eql []
    end
  end
end
