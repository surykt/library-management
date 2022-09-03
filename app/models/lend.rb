class Lend < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :status, presence: true
  validates :return_at, presence: true
end
