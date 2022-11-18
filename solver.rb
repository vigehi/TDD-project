class Solver
  def factorial(n)
    if n <= 1?
      1
    elsif n > 1
      'Number is less than 0'
    else
      Math.gamma(n + 1)
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(n)

    if (n % 3).zero?
      'fizz'
    elsif (n % 5).zero?
      'buzz'
    elsif ((n % 5).zero?  && (n % 3).zero?)
      'fizzbuzz'

    else
      n.to_string
    end
     end
end
