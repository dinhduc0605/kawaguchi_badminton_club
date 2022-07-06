class EventsController < ApplicationController
  def index
    @events = Event.all.order(:id)
  end

  def show
    @event = Event.find(params[:id])
    @participants = @event.participants.order(:id)
  end
end
