class Product < ActiveRecord::Base
  validates :name, :presence => true, :length => { :minimum => 5}
  
  before_save :default_values
  
  has_many :reviews
  
  has_many :purchases
  has_many :users, :through => :purchases
  
  scope :expensive, where("price > 5")
  scope :recent, where("created_at > ?", 10.minutes.ago)
  
  def default_values
    self.price ||= 10
  end
end
