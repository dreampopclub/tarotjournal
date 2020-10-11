class Card
  attr_reader :card_id, :name, :suit, :number, :major

  def initialize(card_id:, name: nil, suit: nil, number:, major: false)
    @card_id = card_id
    @name = name
    @suit = suit
    @number = number
    @major = major
  end
end
