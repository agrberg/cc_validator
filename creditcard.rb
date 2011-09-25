class CreditCard
  attr_reader :number
  attr_reader :sum

  def initialize number
    @number = number
    @sum = 0

    numbers = @number.to_s.split('').reverse.map(&:to_i)
    numbers.each_with_index do |num, i|
      if (i % 2).zero?
        @sum += num
      else
        dbl = (num * 2).to_s.split('').map!(&:to_i)
        @sum += dbl.inject(0) {|a, b| a + b }
      end
    end
  end

  def valid?
    return (sum % 10).zero?
  end
end