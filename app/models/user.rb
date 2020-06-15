class User < ApplicationRecord
  has_many :tasks, dependent: :destroy, foreign_key: "user_id"
  has_secure_password
  has_many :comments, dependent: :destroy
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end