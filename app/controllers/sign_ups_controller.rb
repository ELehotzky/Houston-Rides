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
		@signup = SignUp.create(signup_params)
		redirect_to signups_path
	end

	def edit
		@signup = SignUp.find(params[:id])
	end

	def update
		@signup = SignUp.find(params[:id])
		@signup.update(signup_params)

		redirect_to @signup
	end


	private

	def signup_params
		params.require[:signup].permit(:user_id, :event_id)
	end
end
