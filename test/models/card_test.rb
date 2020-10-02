require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "#name" do
    the_chariot = Card.new(7, nil, "The Chariot")
    four_of_pentacles = Card.new(4, :pentacles, nil)
    ace_of_wands = Card.new(1, :wands, nil)
    page_of_cups = Card.new(11, :cups, nil)
    knight_of_swords = Card.new(12, :swords, nil)
    queen_of_wands = Card.new(13, :wands, nil)
    king_of_cups = Card.new(14, :cups, nil)

    assert_equal "The Chariot", the_chariot.name
    assert_equal "4 of Pentacles", four_of_pentacles.name
    assert_equal "Ace of Wands",  ace_of_wands.name
    assert_equal "Page of Cups", page_of_cups.name
    assert_equal "Knight of Swords", knight_of_swords.name
    assert_equal "Queen of Wands", queen_of_wands.name
    assert_equal "King of Cups", king_of_cups.name
  end
end
