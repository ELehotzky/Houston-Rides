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

	#Clicking on "Register" saves an event to a user's profile, unless they've
	#already registered for an event
	def create
		@signup = SignUp.new(user_id: session[:user_id], event_id: session[:event_id])
		session[:event_id] = nil

		if !current_user.event_ids.include? @signup[:event_id]
			@signup.save
		end
		
		redirect_to current_user
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
