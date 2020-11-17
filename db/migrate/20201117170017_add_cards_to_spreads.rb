class AddCardsToSpreads < ActiveRecord::Migration[6.0]
  def change
    add_column :spreads, :cards, :text
  end
end
