class Match < ApplicationRecord
  belongs_to :championship
  has_many :bets
end
