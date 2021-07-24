class User < ApplicationRecord
  validates_presence_of :email, :name
  validates :email, uniqueness: { case_sensitive: false }, format: { with: URI::MailTo::EMAIL_REGEXP } 
  has_many :books, dependent: :destroy
end
