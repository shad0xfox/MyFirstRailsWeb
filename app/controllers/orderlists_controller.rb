class OrderlistsController < ApplicationController
	def create
		@user = User.find_by_id( session[:user_id])
		@orders = @user.orders.where( status: "In cart" )
		@orderlist = Orderlist.create( order_time: Time.now)

		@orders.each do |order|
			order.status = "Order Determined"

			@orderlist.orders << order
			@user.orderlists << @orderlist
			@orderlist.save
		end

		redirect_to root_path
	end

	def show
		@total = 0 
		@orderlist = Orderlist.find(params[:id])
	end

	def destroy
		@orderlist = Orderlist.find( params[:id])
		@orderlist.destroy
		redirect_to m_orderlists_path
	end
end
