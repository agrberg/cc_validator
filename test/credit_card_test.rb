require 'minitest/autorun'

require_relative '../lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_valid_is_true_for_a_valid_card_number
    credit_card = CreditCard.new(5555555555554444)

    assert credit_card.valid?
  end

def test_valid_is_true_for_a_valid_card_number_as_a_string
    credit_card = CreditCard.new('5555555555554444')

    assert credit_card.valid?
  end

  def test_valid_is_false_for_an_invalid_card_number
    credit_card = CreditCard.new(5555555555554441)

    refute credit_card.valid?
  end
end
