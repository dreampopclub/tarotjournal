module RiderWaite
  extend self
  def build
    majors_count = 22
    minors_count_per_suit = 14

    Deck.add("rider_waite",
             ["The Fool", "The Magician", "The High Priestess", "The Empress",
              "The Emperor", "The Hierophant", "The Lovers", "The Chariot",
              "Strength", "The Hermit", "Wheel of Fortune", "Justice", "The Hanged Man",
              "Death", "Temperance", "The Devil", "The Tower", "The Star", "The Moon",
              "The Sun", "Judgement", "The World"].map.with_index do |name, idx|
               Card.new(card_id: idx, name: name, major: true, number: idx)
             end +
             [:wands, :cups, :swords, :pentacles].map.with_index do |suit, i|
               (1..minors_count_per_suit).map do |number|
                 name = case number
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
                          number.to_s
                        end
                 name << " of " << suit.to_s.capitalize
                 Card.new(card_id: majors_count + (i * minors_count_per_suit) + (number - 1), name: name, suit: suit, number: number)
               end
             end.flatten)
  end
end
