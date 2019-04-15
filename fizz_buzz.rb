require 'rspec'

class FizzBuzz
  def output(number)
    if number % 3 == 0 && number % 5 == 0
      return "fizzbuzz"
    end
    if number % 3 == 0
      return "fizz"
    end
    if number % 5 == 0
      return "buzz"
    end
    return number
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(1)
      expect(result).to eq(1)
    end
    it 'should return 2 if given 2' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(2)
      expect(result).to eq(2)
    end
    it 'should return \'fizz\' if given 3' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(3)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' if given 5' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(5)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizz\' if given 6' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(6)
      expect(result).to eq('fizz')
    end
    it 'should return \'buzz\' if given 10' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(10)
      expect(result).to eq('buzz')
    end
    it 'should return \'fizzbuzz\' if given 15' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(15)
      expect(result).to eq('fizzbuzz')
    end
    it 'should return \'fizzbuzz\' if given 30' do
      fizz_buzz = FizzBuzz.new
      result = fizz_buzz.output(30)
      expect(result).to eq('fizzbuzz')
    end
  end
end
