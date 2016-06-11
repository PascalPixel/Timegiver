class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :team_users, dependent: :destroy
  has_many :teams, through: :team_users

  def team_list
    self.admin ? Team.all : self.teams
  end

end
