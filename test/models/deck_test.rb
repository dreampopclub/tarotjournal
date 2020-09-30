require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  test "the Deck object is instantiated properly" do
    # spot check the deck (minor arcana)
    # suits are ordered wands, cups, swords, pentacles each in numerical order.
    deck = Deck.new
    assert_instance_of Card, deck.cards[0]
    assert_equal 1, deck.cards[0].number
    assert_equal :wands, deck.cards[0].suit
    assert_equal 1, deck.cards[14].number
    assert_equal :cups, deck.cards[14].suit
    assert_equal 1, deck.cards[28].number
    assert_equal :swords, deck.cards[28].suit
    assert_equal 1, deck.cards[42].number
    assert_equal :pentacles, deck.cards[42].suit
  end
end
