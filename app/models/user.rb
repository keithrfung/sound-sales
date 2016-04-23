class User < ActiveRecord::Base
	validates :firstName, presence: true, length: { maximum: 50 }
	validates :lastName, presence: true, length: { maximum: 50 }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }
end
