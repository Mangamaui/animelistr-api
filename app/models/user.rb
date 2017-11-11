class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :user_name, uniqueness: { case_sensitive: false }

  has_many :user_shows
end


