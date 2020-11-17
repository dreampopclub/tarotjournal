class Spread < ApplicationRecord
  belongs_to :user
  validates_presence_of :date, :cards
end
