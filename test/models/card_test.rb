require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "the Card object is instantiated properly" do
    card = Card.new(:wands, 12)
    assert_equal :wands, card.suit
    assert_equal 12, card.number
  end

  test "#name" do
    card = Card.new(:pentacles, 4)
    assert_equal "4 of pentacles", card.name
  end
end
