require 'rspec'
require 'lucky_number'

describe ("lucky_number") do
  it("splits a number down the center and sums each side. returns 'You are lucky' if the sum of each the sides is equal") do
    lucky_number(5234).should eq("You are lucky")
  end

  it("can properly account for the middle digit of odd numbered inputs") do
    lucky_number(52434).should eq("You are lucky")
  end

  it('can handle faulty user input') do 
    lucky_number("asdf").should eq("Please enter a number")
  end

  it('will ask user to try again when entering a one digit number') do
    lucky_number(5).should eq("Please enter a number with more than one digit")
  end

  it('will notify the user when they are not lucky') do
    lucky_number(1234567).should eq("Sorry you are not lucky")
  end
end