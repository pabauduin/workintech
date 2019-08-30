class Visitor < ApplicationRecord
  has_many :forms
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :city, presence: true
  validates :gender, presence: true
  validates :uuid, presence: true, uniqueness: true
end
