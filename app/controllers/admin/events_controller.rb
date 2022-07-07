class Admin::EventsController < ApplicationController
  def index
    @events = Event.all.order(:id)
  end

  def new
    @event = Event.new
  end

  def create
    event = Event.create!(event_params)

    redirect_to admin_events_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update!(event_params)

    redirect_to admin_events_path
    
  end

  def event_params
    params.require(:event).permit(:title, :place, :note, :open_date, :start_time, :end_time, :kind)
  end
end
