class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price_in_cents

  validates :description, :name, :presence => true
  validates :price_in_cents, :numericality => {:only_integer => true}

  has_many :reviews
  has_many :users :through => :reviews
  
end
