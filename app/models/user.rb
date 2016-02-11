class User < ActiveRecord::Base
	has_secure_password

	def is_supervisor?
		self.role == "supervisor"
	end


	has_many :orders , dependent: :destroy
	has_many :orderlists, dependent: :destroy

	validates_presence_of :first_name,:last_name,:password_digest,:email
	validates_uniqueness_of :email
end
