# frozen_string_literal: true
require_relative '../lib/fizzbuzz'
require 'spec_helper'

RSpec.describe FizzBuzz do
  it "returns Fizz when the number is divisible by 3" do
    #infomration
    fizzbuzz_class = described_class.new
    number = 9

    #execution
    result = fizzbuzz_class.divisible_by_three(number)

    #result
    expect(result).to eq "Fizz"
  end

  it "returns Buzz when the number is divisible by 5" do
    #infomration
    fizzbuzz_class = described_class.new
    number = 10

    #execution
    result = fizzbuzz_class.divisible_by_five(number)

    #result
    expect(result).to eq "Buzz"
  end
end
