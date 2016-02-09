class User < ActiveRecord::Base
	has_secure_password

	has_many :orders , dependent: :destroy

	validates_presence_of :first_name,:last_name,:password,:email
	validates_uniqueness_of :email
end
