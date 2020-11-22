class Deck
  include CardList
  attr_reader :name, :cards

  def initialize(deck_name)
    @name = deck_name
    @cards = self.send(deck_name)
  end
end
