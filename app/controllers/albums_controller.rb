class AlbumsController < ApplicationController
  before_action :require_login

  def index
    @albums = Album.all
  end

  def new
    # debugger
    @band = Band.find_by(id: params[:band_id])
    @bands = Band.all
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save!
      redirect_to album_url(@album)
    else
      flash.now[:errors] = ["Invalid album input"]
      render :new
    end
  end

  def edit
    @album = Album.find_by(id: params[:id])
    @bands = Band.all
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album.update(album_params)
      redirect_to album_url(@album)
    else
      flash.now[:errors] = ["Could not update - Invalid Album info"]
      # render :edit
    end
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.delete
    flash[:errors] = ["deleted #{@album.title}"]
    redirect_to band_url(@album.band)
  end

  private
  def album_params
    params.require(:album).permit(:band_id, :title, :year, :studio_recorded)
  end

end
