module DeckHelper
  #TODO consider name spacing this for RW upon adding additional decks.
  def majors(cards)
    cards.select(&:major)
  end

  def minors(cards)
    cards.reject(&:major)
  end

  def deck_select_options(cards)
    card_arr = []
    cards.each do |card|
      card_arr << [card.name, card.card_id]
    end
    card_arr
  end
end
