require 'spec_helper'

describe CreatePerson do
  before :each do
    @create_person = CreatePerson.new('test')
  end

  it 'should return an instance ' do
    expect(@create_person).to be_an_instance_of CreatePerson
  end
end
