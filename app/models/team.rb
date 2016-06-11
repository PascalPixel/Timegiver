class Team < ApplicationRecord
  extend FriendlyId
  friendly_id :company_name, use: :slugged

  has_many :team_users, dependent: :destroy
  has_many :users, through: :team_users

  validates :company_name, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :color, presence: true, length: { minimum: 6, maximum: 6 }
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :title, presence: true
  validates :street_address_1, presence: true
  validates :postal, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :rate, presence: true
  validates :currency_sign, presence: true
  validates :currency, presence: true, length: { minimum: 3, maximum: 3 }


  def name
    "#{self.first_name} #{self.last_name}"
  end
end
