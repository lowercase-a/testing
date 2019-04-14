require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

# driver code

# calculator = Calculator.new

# p "Testing the add method"

# if calculator.add(2, 6) == 8
#   p "Test passes"
# else
#   p "Test fails"
# end


RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(2, 6)
      expect(result).to eq(8)
    end
    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-2, -6)
      expect(result).to eq(-8)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(12, 6)
      expect(result).to eq(6)
    end
    it 'should return the difference of one negative and one positive number' do
      calculator = Calculator.new
      result = calculator.subtract(12, -6)
      expect(result).to eq(18)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(4, 5)
      expect(result).to eq(20)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(12, 4)
      expect(result).to eq(3)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end
  describe '#power' do
    it 'should return the power of two numbers' do
      calculator = Calculator.new
      result = calculator.power(2, 3)
      expect(result).to eq(8)
    end
  end
end
