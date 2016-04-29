class Sale < ActiveRecord::Base
	belongs_to :user
	belongs_to :client
	has_many :saleproducts
  	has_many :products, through: :saleproducts
  	has_many :commissions
end
