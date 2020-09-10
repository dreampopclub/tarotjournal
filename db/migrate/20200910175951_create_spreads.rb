class CreateSpreads < ActiveRecord::Migration[6.0]
  def change
    create_table :spreads do |t|
      t.text :notes

      t.timestamps
    end
  end
end
