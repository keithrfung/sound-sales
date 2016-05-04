class Sale < ActiveRecord::Base
	#validates :product_id, presence: true
	validates :quantity, :numericality => { :greater_than => 0 }

	belongs_to :user
	belongs_to :client

  	has_one :product
	  
	accepts_nested_attributes_for :product
	
  	after_initialize :init
	before_save :calculate

    def init
	    self.quantity		||= 0.0  
	    self.tax			||= 0.0  
	    self.payment_type	||= "" 
	    self.sale_date		||= "" 
	    self.user_id		||= 0.0  
	    self.client_id		||= 0.0 
	    self.product_id		  
	    self.commission_id	||= 0.0  
    end
	
	def calculate
		self.subtotal = self.quantity * Product.find(product_id).price
		self.total = (1 + tax / 100) * self.subtotal
		self.commission = self.total * ( Product.find(product_id).commission_rate / 100 )
	end
end
