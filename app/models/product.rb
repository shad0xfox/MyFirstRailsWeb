class Product < ActiveRecord::Base
	has_many :orders , dependent: :destroy

	validates_presence_of :name,:image, :amount,:price
end
