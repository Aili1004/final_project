class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
    	@user = @current_user
  	end

	def update
    	@user = @current_user
    	if @user.update user_params
      		redirect_to root_path
    	else
    		render :edit
    	end
    end

	private
	def user_params
		params.require(:user).permit(:email, :name, :password, :password_confirmation)
	end

	def check_if_logged_in
		redirect_to root_path unless @current_user.present?
	end

	def check_if_admin
		redirect_to root_path unless @current_user.present? && @current_user.admin?
	end
end
