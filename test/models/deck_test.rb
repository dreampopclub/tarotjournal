require 'test_helper'

class DeckTest < ActiveSupport::TestCase
  test "the Deck object is instantiated properly" do
    deck = Deck.new
    assert_instance_of Card, deck.cards[0]
  end
end
