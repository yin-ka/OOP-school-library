require 'spec_helper'

describe Person do
    before :each do
        @person = Person.new(15, "Joe")
    end
    it "Should return a person object" do
      expect(@person).to be_an_instance_of Person
    end

describe "#age" do
    it "Should return Person age" do
      expect(@person.age).to eql 15
    end
end

describe "#name" do
    it "Should return Person name" do
        expect(@person.name).to eql "Joe"
    end
end
end