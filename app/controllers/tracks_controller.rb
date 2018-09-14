 class TracksController < ApplicationController
   before_action :require_login

   def new
     # debugger
     @album = Album.find_by(id: params[:album_id])
     @track = Track.new
   end

   def create
     @track = Track.new(track_params)
     if @track.save!
       redirect_to album_url(@track.album)
     else
       flash.now[:errors] = ["Invalid track input"]
       render :new
     end
   end

   def show
     @track = Track.find_by(id: params[:id])
   end

   def edit
     @track = Track.find_by(id: params[:id])
   end

   def update
     @track = Track.find_by(id: params[:id])
     if @track.update(track_params)
       redirect_to track_url(@track)
     else
       flash.now[:errors] = ["Could not update - Invalid Track info"]
       redirect_to track_url(@track)
     end
   end

   private
   def track_params
     params.require(:track).permit(:album_id, :title, :ord, :lyrics, :regular)
   end

 end
