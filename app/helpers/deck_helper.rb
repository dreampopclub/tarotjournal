module DeckHelper
  def deck_select_options(cards)
    card_arr = []
    cards.each do |card|
      card_arr << [card.name, card.number]
    end
    card_arr
  end
end
