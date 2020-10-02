class Card
  attr_reader :number, :suit

  def initialize(number, suit, name)
    @number = number
    @suit = suit
    @name = name
  end

  def name
    @name ? @name : build_minor_name
  end

  private

  def build_minor_name
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
