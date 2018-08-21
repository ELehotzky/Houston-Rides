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
		@rating = Rating.create(rating_params)
		redirect_to ratings_path
	end

	def edit
	end


	private

	def rating_params
		params.require[:rating].permit(:score, :comment, :date, :user_id, :trail_id)
	end
end
