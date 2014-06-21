class ParticipantsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @participant = @event.participants.new(participant_params)
    if @participant.save
      redirect_to event_url(@event)
    else
      redirect_to event_url(@event)
    end
  end

  private
    def participant_params
      params.require(:participant).permit(:name, :guests)
    end
end
