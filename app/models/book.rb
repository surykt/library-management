class Book < ApplicationRecord
  validates :name, presence: true
  validates :author, presence: true
  validates :storage_place, presence: true
end
