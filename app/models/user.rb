class User < ApplicationRecord
  has_many :bets
  belongs_to :championship, optional: true

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
