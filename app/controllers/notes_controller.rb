class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    track_id = params[:note][:track_id]
    user_id = current_user.id
    @note = Note.new(body: params[:note][:body], track_id: track_id, user_id: user_id)
    if @note.save
      redirect_to track_url(@note.track)
    else
      flash[:errors] = ["Invalid comment"]
      redirect_to track_url(@note.track)
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.delete
    redirect_to track_url(@note.track)
  end

  # private
  # def note_params
  #   params.require(:note).permit(:body)
  # end

end
