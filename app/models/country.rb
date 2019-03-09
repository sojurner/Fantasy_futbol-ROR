class Country < ApplicationRecord
  validates :name, presence: true
  validates :flag, presence: true
end