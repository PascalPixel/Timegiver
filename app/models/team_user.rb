class TeamUser < ApplicationRecord

  belongs_to :team, optional: false
  belongs_to :user, optional: false

end
