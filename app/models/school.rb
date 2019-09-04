class School < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_city_and_name,
  against: [ :city, :name ],
  using: {
    tsearch: { prefix: true }
  }
end
