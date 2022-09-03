class User < ApplicationRecord
  has_many :books
  
  validates :name, presence: true
  validates :code, presence: true, uniqueness: true
end
