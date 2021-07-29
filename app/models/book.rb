class Book < ApplicationRecord
  validates :title, :author, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 100 }

  has_many :user_books
  has_many :users, through: :user_books
end
