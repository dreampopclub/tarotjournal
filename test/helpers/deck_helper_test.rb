require 'test_helper'

class DeckHelperTest < ActionView::TestCase
  test "#deck_select_options" do
    cards = [OpenStruct.new({name: "1 of wands", number: 1}), OpenStruct.new({name: "4 of pentacles", number: 4}), OpenStruct.new({name: "10 of swords", number: 10})]

    assert_equal [["1 of wands", 1], ["4 of pentacles", 4], ["10 of swords", 10]], deck_select_options(cards)
  end
end
