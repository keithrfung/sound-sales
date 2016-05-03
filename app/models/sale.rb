class Sale < ActiveRecord::Base
	belongs_to :user
	belongs_to :client
	has_many :saleproducts
  	has_many :products, through: :saleproducts
  	has_many :commissions
  	after_initialize :init

    def init
	    self.quantity		||= 0.0  
	    self.subtotal		||= 0.0  
	    self.tax			||= 0.0  
	    self.total			||= 0.0  
	    self.payment_type	||= "" 
	    self.sale_date		||= "" 
	    self.user_id		||= 0.0  
	    self.client_id		||= 0.0 
	    self.commissions_id	||= 0.0  
    end
end
