class Product < ActiveRecord::Base
	has_many :saleproducts
  	has_many :sales, through: :saleproducts
  	after_initialize :init

    def init
	    self.name 				||= "" 
	    self.description		||= "" 
	    self.price				||= 0.0 
	    self.commission_rate	||= 0.0 
    end
end
