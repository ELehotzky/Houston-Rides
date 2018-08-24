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
		@rating = Rating.create(score: params[:rating][:score], comment: params[:rating][:comment], user_id: session[:user_id], trail_id: session[:trail_id])
		session[:trail_id] = nil

		redirect_to @rating.trail
	end

	def edit
		@rating = Rating.find(params[:id])
	end

	def update
		@rating = Rating.find(params[:id])
		@rating.update(score: params[:rating][:score], comment: params[:rating][:comment])

		redirect_to user_path
	end


	private

	def rating_params
		params.require[:rating].permit(:score, :comment, :user_id, :trail_id)
	end
end
