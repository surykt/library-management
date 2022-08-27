class Book < ApplicationRecord
  validate :name, presence: true
  validate :author, presence: true
  validate :storage_place, presence: true
end
