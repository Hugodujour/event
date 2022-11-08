class EventsController < ApplicationController

	def params_event
		params.require(:event).permit(:start_date, :duration, :title, :location)
	end
end