class Team < ApplicationRecord
  extend FriendlyId
  friendly_id :team_name, use: :slugged

  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users

  validates :team_name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :color, presence: true, length: { minimum: 6, maximum: 6 }
  validates :street_address_1, presence: true
  validates :postal, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
