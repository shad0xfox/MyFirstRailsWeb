class UsersController < ApplicationController



	def new
		@user = User.new
	end
	
	def show
	end

	def change_inform
		@user = User.find(params[:id])
	end

	def orders_of_user
		@user = User.find(params[:id])
		@orderlists = @user.orderlists
	end

	def update
		@user = User.find(params[:id])
		if @user.update( params.require(:user).permit(:role,:first_name,:last_name,:email))
			redirect_to :back
		else 
			render 'edit'
		end
	end
	def create
		@user = User.new( user_params )
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path
		else
			render 'new'
		end
	end

	def destroy
		@user = User.find_by_id(params[:id])
		@user.destroy
		redirect_to m_members_path
	end
	
	def edit
		@user = User.find_by_id(params[:id])
		@select = ["supervisor","admin"]
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end
end
