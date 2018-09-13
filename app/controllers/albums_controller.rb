class AlbumsController < ApplicationController

  def new
    @band = Band.find_by(id: params[:band_id])
    @bands = Band.all
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      
    else
    end
  end

  private
  def album_params
    params.require(:album).permit(:band_id, :title, :year, :studio_recorded)
  end

end
