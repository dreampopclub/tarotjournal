class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.date :date
      t.text :notes
      t.text :spread

      t.timestamps
    end
  end
end
