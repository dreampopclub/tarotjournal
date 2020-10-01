class Card
  attr_reader :suit, :number

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def name
    @number.to_s + " of " + @suit.to_s
  end
end
