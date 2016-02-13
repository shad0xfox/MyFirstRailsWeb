class OrdersController < ApplicationController
	before_action :require_user

	def destroy
		@order = Order.find( params[:id])
		@order.destroy
		redirect_to :back
	end

	def new
		@product = Product.find( session[:product_id])
		if @product.amount > 0
			@order = Order.new
		else
			redirect_to root_path
		end
	end

	def create
		@order = Order.new( params.require(:order).permit( :number, :user_id, :product_id) )
		if @order.save
			redirect_to root_path
		else
			render 'new'
		end
	end
end
