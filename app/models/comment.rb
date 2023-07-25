class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
    # Add any other necessary associations or validations
  end