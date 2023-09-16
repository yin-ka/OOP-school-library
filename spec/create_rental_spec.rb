require 'spec_helper'

describe CreateRental do
  before :each do
    @create_rental = CreateRental.new('test')
  end

  it 'should return an instance ' do
    expect(@create_rental).to be_an_instance_of CreateRental
  end
end
