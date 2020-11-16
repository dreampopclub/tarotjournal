require 'test_helper'

class DeckHelperTest < ActionView::TestCase
  test "#deck_select_options" do
    cards = [Card.new(name: "card 1", number: 1, card_id: 0), Card.new(name: "card 2", number: 2, card_id: 1)]

    assert_equal [["card 1", 0], ["card 2", 1]], deck_select_options(cards)
  end
end
