require 'rspec'
require 'lucky_number'

describe ("lucky_number") do
  it("sums the sides of a number of even length and returns 'You are lucky' if sides are equal") do
    lucky_number(5234).should eq("You are lucky")
  end
end