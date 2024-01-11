# frozen_string_literal: true
require 'pry'
class FizzBuzz

  def initialize(number)
    @number =  number
  end
  def divisible_by_three
    if @number % 3 == 0
    "Fizz"
    else
      "This number is not divisible by three"
    end
  end
  def divisible_by_five
    if @number % 5 == 0
      "Buzz"
    else
      "This number is not divisible by five"
    end
  end
  def divisible_by_three_and_five
    if @number % 3 == 0 && @number % 5 == 0
      "FizzBuzz"
    else
      "This number is not divisible by three and five"
    end
  end
end
