class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    participant = Participant.create!(participant_params)

    redirect_to event_url(participant.event)
  end

  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    participant = Participant.find(params[:id])
    participant.update!(participant_params)

    redirect_to event_url(participant.event)
  end

  def destroy
    participant = Participant.find(params[:id])
    participant.destroy

    redirect_to event_url(participant.event), status: :see_other
  end

  private

  def participant_params
    params.require(:participant).permit(:event_id, :name)
  end
end
