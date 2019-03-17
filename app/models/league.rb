class League < ApplicationRecord
  has_many :league_users
  has_many :users, through: :league_users

  validates :name, presence: true, uniqueness: {case_sensitive: false}
end