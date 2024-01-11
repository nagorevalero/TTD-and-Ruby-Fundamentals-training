# frozen_string_literal: true
require 'pry'
class FizzBuzz

  def initialize(number)
    @number =  number
  end
  def divisible_by_three
    return "Fizz" if @number % 3 == 0

    "This number is not divisible by three"
  end
  def divisible_by_five
    return "Buzz" if @number % 5 == 0

    "This number is not divisible by five"
  end
  def divisible_by_three_and_five
    return "FizzBuzz" if @number % 3 == 0 && @number % 5 == 0

      "This number is not divisible by three and five"
  end
end
