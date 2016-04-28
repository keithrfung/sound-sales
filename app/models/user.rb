class User < ActiveRecord::Base
	belongs_to :region
	has_many :sales
	has_many :subordinates, class_name: "User",
                          foreign_key: "manager_id"
    belongs_to :manager, class_name: "User"
end

# Original
# class User < ActiveRecord::Base
# 	belongs_to :region
# 	has_many :sales
# 	has_many :subordinates, class_name: "User",
#                           foreign_key: "manager_id"
#     belongs_to :manager, class_name: "User"
# end
