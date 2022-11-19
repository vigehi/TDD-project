class Solver
  def factorial(num)
    if num.negative?
      'Number is less than 0'
    elsif [1, 0].include?
      1
    else
      Math.gamma(num + 1)
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(_num)
    if (n % 3).zero?
      'fizz'
    elsif (n % 5).zero?
      'buzz'
    elsif (n % 5).zero? && (n % 3).zero?
      'fizzbuzz'

    else
      n.to_string
    end
  end
end
