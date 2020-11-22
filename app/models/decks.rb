class Decks
  include Enumerable
  attr_reader :decks

  def initialize(deck_list)
    @decks = deck_list.each_with_object({}) { |deck_name, obj| obj[deck_name] = Deck.new(deck_name)}
  end

  def get(deck_name)
    @decks[deck_name]
  end

  def each(&block)
    @decks.values.each { |deck| block.call(deck) }
  end
end
