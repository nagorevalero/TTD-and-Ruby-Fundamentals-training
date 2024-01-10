# frozen_string_literal: true

require_relative '../lib/fizzbuzz'
require 'spec_helper'

RSpec.describe Fizzbuzz do
  it "returns Fizz when the number is divisible by 3" do
    #infomration
    number = 9

    #execution
    result = described_class.divisible_by_three(number)


    #result
    expect(result).to eq "Fizz"
  end
end
