class User < ActiveRecord::Base
	belongs_to :region
	has_many :sales
	has_many :subordinates, class_name: "User",
                          foreign_key: "manager_id"
    belongs_to :manager, class_name: "User"
    after_initialize :init

    def init
		self.first_name	||= "" 
	    self.last_name	||= "" 
	    self.username	||= "" 
	    self.password	||= "" 
	    self.role		||= "" 
	    self.manager_id	||= 0.0  
	    self.region_id	||= 0.0  
    end
end
