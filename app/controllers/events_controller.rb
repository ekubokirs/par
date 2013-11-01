class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new event_params
		@event.save

		redirect_to root_url
		flash[:notice] = "Event Created!"
	end

	def show
		@event	= Event.find(params[:id])
		@owner	=	User.find(@event.user_id)
	end
	
	def edit
		@event = Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update_attributes(event_params)

		redirect_to root_url
		flash[:notice] = "Event Updated"
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy

		redirect_to root_url
		flash[:notice] = "Event Deleted"
	end

	private

	def event_params
		params.require(:event).permit(
			:title,
			:venue,
			:event_type,
			{chores:[]},
			{suppplies: []},
		)
	end
end
