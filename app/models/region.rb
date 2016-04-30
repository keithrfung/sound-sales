class Region < ActiveRecord::Base
	has_many :users, foreign_key: "user_id", class_name: "User"
	has_one :manager, class_name: "User", foreign_key: "manager_id"
end
