class Region < ActiveRecord::Base
	has_many :users, foreign_key: "user_id", class_name: "User"
	has_one :manager, class_name: "User", foreign_key: "manager_id"
	after_initialize :init

    def init
	    self.name 		||= ""
	    self.area		||= ""
	    self.city		||= ""
	    self.state		||= ""
	    self.zipcode	||= ""
	    self.country	||= ""
	    self.manager_id	||= 0.0 
    end
end
