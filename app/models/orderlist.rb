class Orderlist < ActiveRecord::Base
	has_many :orders , dependent: :destroy 
	belongs_to :user
end
