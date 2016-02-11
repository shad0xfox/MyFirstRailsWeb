class ManagementsController < ApplicationController
	before_action :require_supervisor


	def index
	end

	def m_products
		@products = Product.all
	end

	def m_members
		@members = User.all
	end

	def m_orderlists
		@orderlists = Orderlist.all
	end
end
