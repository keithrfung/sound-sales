class Product < ActiveRecord::Base
	has_many :saleproducts
  	has_many :sales, through: :saleproducts
end
