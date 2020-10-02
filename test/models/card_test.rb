require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "the Card object is instantiated properly" do
    card = Card.new(:wands, 12)
    assert_equal :wands, card.suit
    assert_equal 12, card.number
  end

  test "#name" do
    four_of_pentacles = Card.new(:pentacles, 4)
    ace_of_wands = Card.new(:wands, 1)
    page_of_cups = Card.new(:cups, 11)
    knight_of_swords = Card.new(:swords, 12)
    queen_of_wands = Card.new(:wands, 13)
    king_of_cups = Card.new(:cups, 14)

    assert_equal "4 of Pentacles", four_of_pentacles.name
    assert_equal "Ace of Wands",  ace_of_wands.name
    assert_equal "Page of Cups", page_of_cups.name
    assert_equal "Knight of Swords", knight_of_swords.name
    assert_equal "Queen of Wands", queen_of_wands.name
    assert_equal "King of Cups", king_of_cups.name
  end
end
