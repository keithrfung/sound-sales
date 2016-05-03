class Commission < ActiveRecord::Base
	belongs_to :sale
	has_many :products
	after_initialize :init

    def init
        self.amount		||= 0.0 
	    self.sale_id	||= 0.0 
	    self.product_id	||= 0.0 
    end
end
