# frozen_string_literal: true
require_relative '../lib/fizzbuzz'
require 'spec_helper'

RSpec.describe FizzBuzz do



  it "returns Fizz when the number is divisible by 3" do
    #infomration
    number = 9

    #execution
    result = described_class.new(number).divisible_by_three

    #result
    expect(result).to eq "Fizz"
  end

  it "returns Buzz when the number is divisible by 5" do
    #infomration
    number = 10

    #execution
    result = described_class.new(number).divisible_by_five

    #result

    expect(result).to eq "Buzz"
  end

  it "returns FizzBuzz when the number is divisible by 5" do
    #infomration
    number = 10

    #execution
    result = described_class.new(number).divisible_by_three_and_five

    #result
    expect(result).to eq "FizzBuzz"
  end

  it "returns 'please chose another number' if number is not divisible by 3, 5 or both" do
    #infomration
    number = 14

    #execution
    result = described_class.new(number).divisible_by_three

    #result
    expect(result).to eq "This number is not divisible by three"
  end
end
