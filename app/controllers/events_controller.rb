class EventsController < ApplicationController
  def index
    @events = Event.all.order(:id)
  end
end
