class Customer < ActiveRecord::Base
  has_many :products, through: :orders
  has_many :orders
end
