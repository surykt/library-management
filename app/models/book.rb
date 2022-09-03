class Book < ApplicationRecord
  has_many :lends
  
  validates :name, presence: true
  validates :author, presence: true
  validates :storage_place, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_author,
    against: [ :name, :author ],
    using: {
      tsearch: { prefix: true }
    }
end
