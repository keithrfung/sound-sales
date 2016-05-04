class Sale < ActiveRecord::Base
	validates :product_id, presence: true
	validates :quantity, :numericality => { :greater_than => 0 }

	belongs_to :user
	belongs_to :client
	#has_many :saleproducts
  	has_one :product #s, through: :saleproducts
  	has_one :commission
  	after_initialize :init
	before_save :calculate

    def init
	    self.quantity		||= 0.0  
	    self.tax			||= 0.0  
	    self.payment_type	||= "" 
	    self.sale_date		||= "" 
	    self.user_id		||= 0.0  
	    self.client_id		||= 0.0 
	    self.product_id		||= 0.0 
	    self.commission_id	||= 0.0  
    end
	
	def calculate
		self.subtotal = quantity * 4.00 #FIXME
		self.total = (1 + tax / 100) * self.subtotal
	end
end
