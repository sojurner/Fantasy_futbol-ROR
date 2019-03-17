class LeagueUserPlayer < ApplicationRecord
  belongs_to :player
  belongs_to :league_user
end