class OrdersController < ApplicationController
	def destroy
		@order = Order.find( params[:id])
		@order.destroy
		redirect_to :back
	end
end
