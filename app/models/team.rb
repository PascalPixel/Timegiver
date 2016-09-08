class Team < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users
  has_many :meetings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :color, presence: true, length: { minimum: 6, maximum: 6 }
end
