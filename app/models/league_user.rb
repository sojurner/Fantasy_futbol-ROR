class LeagueUser < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :league_user_players
  has_many :players, through: :league_user_players
end