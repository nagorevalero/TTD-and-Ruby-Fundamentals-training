# frozen_string_literal: true

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
    if @number % 5
      "Buzz"
    end
  end

  def divisible_by_three_and_five
    if @number % 3 && @number % 5
      "FizzBuzz"
    end
  end

end
