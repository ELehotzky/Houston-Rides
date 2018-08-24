class EventsController < ApplicationController
	
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
		@signup = SignUp.new
		session[:event_id] = @event.id
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_path
	end

	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update(event_params)

		redirect_to @event
	end


	private

	def event_params
		params.require(:event).permit(:name, :date, :location, :distance, :description, :website, :sponsor, :price, :type_id)
	end
end
