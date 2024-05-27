class EventsController < ApplicationController
    def new
      @event = Event.new
    end
  
    def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to @event, notice: 'Event was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def event_params
      params.require(:event).permit(:title, :description, :date, :location)
    end
  end
  