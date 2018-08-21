class TrailsController < ApplicationController
	def index
		@trails = Trail.all
	end

	def show
		@trail = Trail.find(params[:id])
	end

	def new
		@trail = Trail.new
	end

	def create
		@trail = Trail.create(trail_params)
		redirect_to trails_path
	end

	def edit
		@trail = Trail.find(params[:id])
	end

	def update
		@trail = Trail.find(params[:id])
		@trail.update(trail_params)

		redirect_to @trail
	end


	private

	def trail_params
		params.require[:trail].permit(:name, :location, :description, :rating, :photo, :distance, :difficulty, :type_id)
	end
end










