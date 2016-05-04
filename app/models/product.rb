class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :price, :numericality => { :greater_than => 0 }

	has_one :commission
	#has_many :saleproducts
  	has_many :sales #, through: :saleproducts
  	after_initialize :init

    def init
	    self.name 				||= "" 
	    self.description		||= "" 
	    self.price				||= 0.0 
	    self.commission_rate	||= 0.0 
    end
	
	def name_and_price
	     self.name + " ($" + ('%.2f' % self.price) + ")"
	end
	
end
