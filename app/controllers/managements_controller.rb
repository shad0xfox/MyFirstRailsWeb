class ManagementsController < ApplicationController
	before_action :require_supervisor


	def index
	end

	def m_products
	end

	def m_members
		@members = User.all
	end

	def m_orders
	end
end
