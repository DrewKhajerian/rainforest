class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents

  validates :description, :name, :precence => true
  validtaes :price_in_cents, :numericality => {only_integer => true}
end
