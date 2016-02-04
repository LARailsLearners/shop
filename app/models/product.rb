class Product < ActiveRecord::Base
  has_many :customers, through: :orders
  has_many :orders
end
