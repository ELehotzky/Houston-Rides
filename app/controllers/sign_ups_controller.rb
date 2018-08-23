class SignUpsController < ApplicationController
	
	def index
		@signups = SignUp.all
	end

	def show
		@signup = SignUp.find(params[:id])
	end

	def new
		@signup = SignUp.new
	end

	def create

		@signup = SignUp.create(user_id: session[:user_id], event_id: session[:event_id])

		session[:event_id] = nil
		redirect_to current_user

	end

	def edit
		@signup = SignUp.find(params[:id])
	end

	def update
		@signup = SignUp.find(params[:id])
		@signup.update(signup_params)

		redirect_to @signup
	end

	def destroy

		@signup = SignUp.find(params[:id])
		@signup.destroy
		redirect_to user_path
	end 


	private

	def signup_params
		params.require[:signup].permit(:user_id, :event_id)
	end
end
