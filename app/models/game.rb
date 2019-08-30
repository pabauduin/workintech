class Game < ApplicationRecord
  validates :description, presence: true
  validates :short_description, presence: true
end

