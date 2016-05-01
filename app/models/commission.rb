class Commission < ActiveRecord::Base
	belongs_to :sale
	after_initialize :init

    def init
        self.amount		||= 0.0 
	    self.sale_id	||= 0.0 
    end
end
