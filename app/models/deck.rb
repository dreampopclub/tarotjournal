class Deck
 attr_reader :cards
 def initialize
   @cards = [
     Card.new(:wands, 0),
     Card.new(:wands, 1)
   ]
 end

end
