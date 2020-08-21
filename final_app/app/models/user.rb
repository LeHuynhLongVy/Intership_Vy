class User < ApplicationRecord
  validates :firstname, presence: true, length: {maximum: 25, message: "Maximum 25 characters"}, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters" }
  validates :lastname, presence: true, length: {maximum: 25, message: "Maximum 25 characters"}, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters" }
  validates :email, presence: true, uniqueness: true, length: {maximum: 255, message: "Maximum 255 characters"}, format: { with: /\A.+@.+\z/, message: "Email invalid" }
  validates :password, presence: true, length: {maximum: 64, message: "Maximum 64 characters"}
  has_many :photos
  has_many :albums
end
