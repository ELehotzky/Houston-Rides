class UsersController < ApplicationController

	before_action :redirect_if_not_logged_in, only: [:index]
	
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if !user.valid?
			flash[:error] = user.errors.full_messages
			redirect_to signup_path
		else
			session[:user_id] = user.id 
			redirect_to users_path
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)

		redirect_to @user
	end


	private

	def user_params
		params.require[:user].permit(:name, :username, :email, :password, :password_confirmation, :profile_pic)
	end

end
