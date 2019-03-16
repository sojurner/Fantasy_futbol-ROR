class Player < ApplicationRecord
  validates_presence_of :user_id
  validates_presence_of :league_id
  validates_presence_of :player_id
end