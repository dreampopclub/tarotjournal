class Card
  attr_reader :suit, :number

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def name
    name = case @number
           when 1
             "Ace"
           when 11
             "Page"
           when 12
             "Knight"
           when 13
             "Queen"
           when 14
             "King"
           else
             @number.to_s
           end
    name + " of " + @suit.to_s.capitalize
  end
end
