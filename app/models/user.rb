
  class User < ApplicationRecord
    # Other attributes and validations here
    has_secure_password
    validates :password, presence: true, confirmation: true
    validates :password_confirmation, presence: true
    validates :email, presence: true, uniqueness: true
  end
  


