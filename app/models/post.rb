class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    # Add any other necessary associations or validations
  end