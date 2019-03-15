class League < ApplicationRecord
  has_many :league_users
  has_many :league_players
  has_many :users, through: :league_users
  has_many :players, through: :league_players

  validates_presence_of :name
end