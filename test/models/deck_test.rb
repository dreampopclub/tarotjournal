require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  test "the Deck object is instantiated properly" do
    # spot check the deck

   deck = Deck.new
    assert_instance_of Card, deck.cards[:majors][0]
    assert_instance_of Card, deck.cards[:minors][0]

    assert_equal 1, deck.cards[:minors][0].number
    assert_equal :wands, deck.cards[:minors][0].suit
    assert_equal 1, deck.cards[:minors][14].number
    assert_equal :cups, deck.cards[:minors][14].suit
    assert_equal 1, deck.cards[:minors][28].number
    assert_equal :swords, deck.cards[:minors][28].suit
    assert_equal 1, deck.cards[:minors][42].number
    assert_equal :pentacles, deck.cards[:minors][42].suit

    assert_equal "The Chariot", deck.cards[:majors][7].name
  end
end
