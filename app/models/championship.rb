class Championship < ApplicationRecord
  has_many :users
  has_many :matches

  validates :name, presence: true
  validates :team_count, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
