class Orderlist < ActiveRecord::Base
	has_many :orders
	belongs_to :user
end
