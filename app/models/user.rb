class User < ApplicationRecord
  has_secure_password
  validates :password, :length => { :minimum => 6 }
  validates :email

  has_many :user_shows

end

