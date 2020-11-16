require 'test_helper'

class DeckTest < ActiveSupport::TestCase

  def test_that_decks_can_be_added
    cards = [Card.new(card_id: 1, number: 2), Card.new(card_id: 2, number: 3)]
    Deck.add("test_deck", cards)
    assert_equal "test_deck", Deck.get("test_deck").name
  end

  def test_spot_check_Rider_Waite_deck
    rw = Deck.get('rider_waite')
    assert_equal "rider_waite", rw.name
    assert_equal "The Hierophant", rw.cards[5].name
    assert_equal 5, rw.cards[5].card_id
    assert rw.cards[5].major
    assert_equal 23, rw.cards[23].card_id
    assert_equal "Ace of Wands", rw.cards[22].name
    assert_equal 22, rw.cards[22].card_id
    assert_equal :wands, rw.cards[22].suit
  end
end
