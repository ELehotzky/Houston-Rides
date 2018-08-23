class RatingsController < ApplicationController

	def index
		@ratings = Rating.all
	end

	def show
		@rating = Rating.find(params[:id])
	end

	def new
		@rating = Rating.new
	end

	def create
		@rating = Rating.create(user_id: session[:user_id], trail_id: session[:trail_id])
		redirect_to trail
	end

	def edit
	end


	private

	def rating_params
		params.require[:rating].permit(:score, :comment, :date, :user_id, :trail_id)
	end
end
