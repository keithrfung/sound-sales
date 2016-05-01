class User < ActiveRecord::Base
	attr_accessor :password
	validates_confirmation_of :password
	before_save :encrypt_password
	belongs_to :region
	has_many :sales
	has_many :subordinates, class_name: "User", foreign_key: "manager_id"
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
	
	def has_role?(role_name)
    	self.role == role_name
  	end
	
	def encrypt_password
		self.password_salt = BCrypt::Engine.generate_salt
		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	end

	def self.authenticate(email, password)
		user = User.where(email: email).first
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end
end
