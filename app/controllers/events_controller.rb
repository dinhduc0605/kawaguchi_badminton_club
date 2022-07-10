class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def index
    @events = Event.active.order(:open_date)
  end

  def create
    event = Event.create!(event_params)

    redirect_to events_url
  end

  def show
    @event = Event.find(params[:id])
    @participants = @event.participants.order(:id)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update!(event_params)

    redirect_to events_url
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy

    redirect_to events_url, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :place, :note, :open_date, :start_time, :end_time, :kind)
  end

end
