require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  test "#majors" do
    deck = Deck.new
    assert_equal "The Chariot", deck.majors[7].name
  end

  test "minors" do
    assert_equal 1, deck[:minors][42].number
    assert_equal :pentacles, deck[:minors][42].suit
  end
end
