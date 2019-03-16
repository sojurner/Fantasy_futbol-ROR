class User < ApplicationRecord
  has_many :league_users
  has_many :leagues, through: :league_users

  validates :full_name, presence: true, length: {minimum: 3, maximum: 30}
  validates :user_name, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 5, maximum: 25}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}

  has_secure_password
  validates :password, presence: true, on: :create
end