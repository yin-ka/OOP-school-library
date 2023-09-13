require 'spec_helper'

describe CreateBook do
  before :each do
    @create_book = CreateBook.new('test')
  end

  it 'should return an instance ' do
    expect(@create_book).to be_an_instance_of CreateBook
  end
end
