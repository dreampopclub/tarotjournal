class Deck
  def initialize
    @cards = {majors: build_majors, minors: build_minors}
  end

  def majors
    @cards[:majors]
  end

  def minors
    @cards[:minors]
  end

  private

  def build_majors
    major_arcana =
      ["The Fool", "The Magician", "The High Priestess", "The Empress",
       "The Emperor", "The Hierophant", "The Lovers", "The Chariot",
       "Strength", "The Hermit", "Wheel of Fortune", "Justice", "The Hanged Man",
       "Death", "Temperance", "The Devil", "The Tower", "The Star", "The Moon",
       "The Sun", "Judgement", "The World"]

    major_cards = []
    major_arcana.each_with_index { |val, i| major_cards << Card.new(i, nil, val)}
    major_cards
  end

  def build_minors
    minors_suits = [:wands, :cups, :swords, :pentacles]
    minor_cards = []

    minors_suits.each do |suit|
      for i in 1..14
        minor_cards << Card.new(i, suit, nil)
      end
    end
    minor_cards
  end
end
