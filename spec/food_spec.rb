require 'foodie'

describe Foodie::Food do
  it "pluralizes a word" do
    Foodie::Food.pluralize("Tomato").should eql("Tomatoes")
  end
end