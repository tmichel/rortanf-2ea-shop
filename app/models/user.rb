class User < ActiveRecord::Base
  # attributes: name
  
  has_many :purchases
  has_many :products, :through => :purchases
  
  has_many :reviews
end
