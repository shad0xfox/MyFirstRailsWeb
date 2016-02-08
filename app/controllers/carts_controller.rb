class CartsController < ApplicationController
	before_action :require_user, only: [:index]

	def index
		@user = User.find_by_id( session[:user_id])
		@orders = @user.orders
	end
end
