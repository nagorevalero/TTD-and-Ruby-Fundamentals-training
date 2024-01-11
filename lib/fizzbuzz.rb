# frozen_string_literal: true

class FizzBuzz
  def divisible_by_three(number)
    if number % 3
    "Fizz"
    end
  end
  def divisible_by_five(number)
    if number % 5
      "Buzz"
    end
  end

  def divisible_by_three_and_five(number)
    if number % 3 && number % 5
      "FizzBuzz"
    end
  end
end
