class Review < ActiveRecord::Base
  # attributes: content, score
  
  belongs_to :product
  belongs_to :user
end
