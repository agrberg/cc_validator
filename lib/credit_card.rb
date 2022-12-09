class CreditCard
  def initialize(number) = @number = number

  def valid? = (checksum % 10).zero?

  private

  def checksum
    digits = @number.to_s.split('').reverse.map(&:to_i)

    digits.each_with_index.reduce(0) do |memo, digit_and_index|
      memo + next_value(*digit_and_index)
    end
  end

  def next_value(number, index)
    index.even? ? number : double_and_sum_digits(number)
  end

  def double_and_sum_digits(number)
    double = number * 2
    digits = double.to_s.split('').map(&:to_i)
    digits.reduce(&:+)
  end
end
