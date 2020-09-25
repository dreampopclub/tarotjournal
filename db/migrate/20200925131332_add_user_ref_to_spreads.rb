class AddUserRefToSpreads < ActiveRecord::Migration[6.0]
  def change
    add_reference :spreads, :user, foreign_key: true
    change_column_null :spreads, :user_id, 0
  end
end
