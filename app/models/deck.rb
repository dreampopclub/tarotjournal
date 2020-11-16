class Deck
  attr_reader :cards, :name
  @decks = {}
  def initialize(name, cards)
    @name = name
    @cards = cards
  end

  def self.add(name, cards)
    @decks[name] = Deck.new(name, cards)
    @decks[name]
  end

  def self.get(name)
    @decks[name]
  end

  def self.decks
    @decks
  end
end
