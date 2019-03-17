class Player < ApplicationRecord
  has_many :league_user_players
  has_many :league_users, through: :league_user_players
  belongs_to :player_stat
  validates :player_stat_id, presence: true, uniqueness: true
end