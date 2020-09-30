class Deck
 attr_reader :cards
 def initialize
   @cards = build_deck
 end

 private

 def build_deck
   make_wands + make_cups + make_swords + make_pentacles
 end

 def make_wands
   wands = []
   for i in 1..14
     wands << Card.new(:wands, i)
   end
   wands
 end

 def make_cups
   cups = []
   for i in 1..14
     cups << Card.new(:cups, i)
   end
   cups
 end

 def make_swords
   swords = []
   for i in 1..14
     swords << Card.new(:swords, i)
   end
   swords
 end

 def make_pentacles
   pentacles = []
   for i in 1..14
     pentacles << Card.new(:pentacles, i)
   end
   pentacles
 end

end
