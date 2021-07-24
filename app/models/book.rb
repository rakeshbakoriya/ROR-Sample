class Book < ApplicationRecord
  belongs_to :user
  validates :title, :author, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 100 }
end
