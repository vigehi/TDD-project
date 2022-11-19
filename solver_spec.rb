require_relative 'solver'

describe Solver do
  solver = Solver.new
  context 'Getting factorial of a number (n):' do
    it 'Raise an exception for factorial of negative numbers ie all numbers less than 0' do
      expect(solver.factorial(-1)).to eq 'Number is less than 0'
    end

    it 'Return the factorial of 0 as 1' do
      expect(solver.factorial(0)).to eq 1
    end

    it 'Return the factorial of 1 as 1' do
      expect(solver.factorial(1)).to eq 1
    end

    it 'Return the factorial of numbers greater than 1' do
      expect(solver.factorial(9)).to eq 362_880
    end

    it 'Return the factorial of numbers greater than 100' do
      expect(solver.factorial(101)).to eq Math.gamma(101 + 1)
    end
  end

  context 'Reverse a string:' do
    it 'Should return a string value' do
      return_value = solver.fizzbuzz(4)
      expect(return_value).to eq 4.to_s
    end
    it 'Should not get an error for empty string' do
      expect(solver.reverse('')).to eq ''
    end

    it 'Should reverse a string of one word' do
      expect(solver.reverse('hello')).to eq 'olleh'
    end

    it 'Should reverse a string of one word or more' do
      expect(solver.reverse('hello world!')).to eq '!dlrow olleh'
    end
  end

  context 'Get "fizzbuzz" value:' do
    it 'Numbers divisible by 3 should return "fizz"' do
      expect(solver.fizzbuzz(6)).to eq 'fizz'
    end

    it 'Numbers divisible by 5 should return "buzz"' do
      expect(solver.fizzbuzz(10)).to eq 'buzz'
    end

    it 'Numbers divisible by both 3 and 5 should return "fizzbuzz"' do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end

    it 'Numbers not divisible by 3 and 5 should return a string' do
      expect(solver.fizzbuzz(7)).to eq 7.to_string
    end
  end
end
