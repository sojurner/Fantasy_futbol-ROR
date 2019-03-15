class League < ApplicationRecord
  has_many :league_users
  has_many :users, through: :league_users

  validates_presence_of :name
  validates :user_id, presence: false
end