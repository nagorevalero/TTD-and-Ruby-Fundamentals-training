# frozen_string_literal: true
require 'pry'
class FizzBuzz

  def divisible_by_three(number)
    return "Fizz" if number % 3 == 0

    "This number is not divisible by three"
  end

  def divisible_by_five(number)
    return "Buzz" if number % 5 == 0

    "This number is not divisible by five"
  end

  def divisible_by_three_and_five(number)
    return "FizzBuzz" if number % 3 == 0 && number % 5 == 0

      "This number is not divisible by three and five"
  end

end
