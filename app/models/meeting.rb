class Meeting < ApplicationRecord
  belongs_to :team, optional: false

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }

  validates :datetime, presence: true

end
