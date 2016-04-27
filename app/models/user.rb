class User < ActiveRecord::Base
	belongs_to :region
	has_many :sales
	has_many :subordinates, class_name: "Employee",
                          foreign_key: "manager_id"
    belongs_to :manager, class_name: "Employee"
end
