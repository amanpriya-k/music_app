class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def new
    @band = Band.new
    render :new
  end

  def create
    # debugger
    @band = Band.new(params.require(:band).permit(:name))
    if @band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = ["Invalid band name"]
      render :new
    end
  end

  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def edit
    @band = Band.find_by(id: params[:id])
    # debugger
    render :edit
  end

  def update
    # debugger
    @band = Band.find_by(id: params[:id])
    if @band.update!(params.require(:band).permit(:name))
      redirect_to band_url(@band)
    else
      flash.now[:errors] = ["Could not update - Invalid name"]
      # render :edit
    end
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.delete
    flash[:errors] = ["deleted #{@band.name}"]
    redirect_to bands_url
  end

end
